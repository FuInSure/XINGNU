param([Parameter(Mandatory=$true)][string]$ModsPath)
$ErrorActionPreference='Stop'
$root=(Resolve-Path -LiteralPath $ModsPath).Path
$lock=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'mod-lock.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$failures=@()
foreach($mod in $lock.mods){
 $file=Join-Path (Join-Path $root $mod.folder) 'manifest.json'
 if(!(Test-Path -LiteralPath $file -PathType Leaf)){$failures+="MISSING MOD: $($mod.folder)";continue}
 $s=Get-Content -LiteralPath $file -Raw -Encoding UTF8
 $s=[regex]::Replace($s,'"(?:\\.|[^"\\])*"|//[^\r\n]*|/\*[\s\S]*?\*/',{param($m) if($m.Value.StartsWith('"')){$m.Value}else{''}})
 $s=[regex]::Replace($s,'("(?:\\.|[^"\\])*")|,\s*(?=[}\]])',{param($m) if($m.Groups[1].Success){$m.Groups[1].Value}else{''}})
 try{$m=$s | ConvertFrom-Json}catch{$failures+="INVALID MANIFEST: $($mod.folder)";continue}
 if($m.UniqueID -ne $mod.id -or [string]$m.Version -ne $mod.version){$failures+="WRONG VERSION/ID: $($mod.folder); expected $($mod.id) $($mod.version)"}
}
if($failures.Count){$failures | ForEach-Object {Write-Output $_};throw 'Fix missing/wrong mods before applying the team setup.'}
Write-Output "All $($lock.mods.Count) required mod IDs and versions match."
