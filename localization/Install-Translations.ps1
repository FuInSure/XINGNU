param([Parameter(Mandatory=$true)][string]$ModsPath,[switch]$CheckOnly)
$ErrorActionPreference='Stop'
function Hash([byte[]]$Bytes){if($null -eq $Bytes){$Bytes=[byte[]]::new(0)}$h=[Security.Cryptography.SHA256]::Create();try{return ([BitConverter]::ToString($h.ComputeHash($Bytes,0,$Bytes.Length))).Replace('-','').ToLowerInvariant()}finally{$h.Dispose()}}
function CheckPath([string]$Path){$item=Get-Item -LiteralPath $Path -ErrorAction SilentlyContinue;while(!$item){$Path=Split-Path -Parent $Path;if(!$Path){throw 'Invalid path'};$item=Get-Item -LiteralPath $Path -ErrorAction SilentlyContinue};while($item){if($item.Attributes -band [IO.FileAttributes]::ReparsePoint){throw 'Linked paths are not supported'};if($item -is [IO.FileInfo]){$item=$item.Directory}else{$item=$item.Parent}}}
$root=(Resolve-Path -LiteralPath $ModsPath).Path.TrimEnd('\');CheckPath $root
if(Get-Process StardewModdingAPI,StardewValley -ErrorAction SilentlyContinue){throw 'Close the game before checking/installing translations.'}
$patch=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'patches.json') -Raw -Encoding UTF8 | ConvertFrom-Json
if($patch.format -ne 1){throw 'Unsupported patch format'}
$plan=@();$done=0;$skipped=0
foreach($entry in $patch.entries){
 $rel=$entry.path.Replace('/','\')
 $path=[IO.Path]::GetFullPath((Join-Path $root $rel))
 if(!$path.StartsWith($root+'\',[StringComparison]::OrdinalIgnoreCase)){throw 'Out-of-root patch path'}
 CheckPath $path
 $modFolder=Join-Path $root ($rel.Split('\')[0])
 if(!(Test-Path -LiteralPath $modFolder -PathType Container)){Write-Output "SKIP absent mod: $($entry.path)";$skipped++;continue}
 $exists=Test-Path -LiteralPath $path -PathType Leaf
 [byte[]]$original=if($exists){[IO.File]::ReadAllBytes($path)}else{@()}
 $hash=Hash $original
 if($exists -and $hash -eq $entry.after){Write-Output "ALREADY: $($entry.path)";$done++;continue}
 if($entry.before){if(!$exists -or $hash -ne $entry.before){throw "Original file mismatch: $($entry.path). No files have been changed. Install the matching original version; do not force this patch."}}
 elseif($exists){throw "Existing translation differs: $($entry.path). No files have been changed."}
 $buffer=[IO.MemoryStream]::new()
 try{
 foreach($op in $entry.operations){
  if($null -ne $op.data){$bytes=[Convert]::FromBase64String($op.data);$buffer.Write($bytes,0,$bytes.Length)}
  else{if($op.offset -lt 0 -or $op.length -lt 0 -or ($op.offset+$op.length) -gt $original.Length){throw 'Invalid copy range'};$buffer.Write($original,[int]$op.offset,[int]$op.length)}
 }
 [byte[]]$result=$buffer.ToArray()
 }finally{$buffer.Dispose()}
 if($result.Length -ne $entry.size -or (Hash $result) -ne $entry.after){throw 'Patch output checksum failed'}
 $plan+=@{Path=$path;Relative=$rel;Original=$original;Result=$result;Existed=$exists;Hash=$entry.after}
}
Write-Output "Ready: $($plan.Count); already installed: $done; absent mods: $skipped"
if($CheckOnly -or !$plan.Count){return}
$backup=Join-Path (Split-Path -Parent $root) ('XINGNU-translation-backup-'+(Get-Date -Format 'yyyyMMdd-HHmmss')+'-'+[Guid]::NewGuid().ToString('N').Substring(0,6))
New-Item -ItemType Directory -Path $backup | Out-Null
$record=@();$written=@()
try{
 foreach($job in $plan){
  $dest=Join-Path $backup $job.Relative
  if($job.Existed){[IO.Directory]::CreateDirectory((Split-Path $dest)) | Out-Null;[IO.File]::WriteAllBytes($dest,$job.Original)}
  $record+=@{Path=$job.Relative;Existed=$job.Existed}
 }
 $record | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $backup 'restore-list.json') -Encoding UTF8
 foreach($job in $plan){
  CheckPath $job.Path
  if($job.Existed){if((Hash ([IO.File]::ReadAllBytes($job.Path))) -ne (Hash $job.Original)){throw 'File changed during installation'}}elseif(Test-Path -LiteralPath $job.Path){throw 'File appeared during installation'}
  [IO.Directory]::CreateDirectory((Split-Path $job.Path)) | Out-Null
  $written+=,$job
  [IO.File]::WriteAllBytes($job.Path,$job.Result)
  if((Hash ([IO.File]::ReadAllBytes($job.Path))) -ne $job.Hash){throw 'Installed checksum mismatch'}
 }
}catch{
 foreach($job in $written){if($job.Existed){[IO.File]::WriteAllBytes($job.Path,$job.Original)}elseif(Test-Path -LiteralPath $job.Path){Remove-Item -LiteralPath $job.Path}}
 throw
}
Write-Output "Installed and verified. Backup: $backup"
