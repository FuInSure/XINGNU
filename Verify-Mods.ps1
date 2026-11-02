param([Parameter(Mandatory=$true)][string]$ModsPath)
$ErrorActionPreference='Stop'
$root=(Resolve-Path -LiteralPath $ModsPath).Path
$lock=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'mod-lock.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$failed=0
foreach($entry in $lock.files){
 $path=Join-Path $root $entry.path
 if(!(Test-Path -LiteralPath $path -PathType Leaf)){Write-Output "MISSING: $($entry.path)";$failed++;continue}
 if((Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash -ne $entry.sha256){Write-Output "DIFFERENT: $($entry.path)";$failed++}
}
$known=@{};foreach($entry in $lock.files){$known[$entry.path.Replace('/','\')]=$true}
Get-ChildItem -LiteralPath $root -Recurse -File | ForEach-Object {
 $relative=$_.FullName.Substring($root.TrimEnd('\').Length+1)
 if(!$known.ContainsKey($relative)){Write-Output "EXTRA (review): $relative"}
}
if($failed){Write-Output "Mismatch count: $failed";exit 1}
Write-Output 'All baseline files match. Extra files above still need review; this does not certify multiplayer compatibility.'
