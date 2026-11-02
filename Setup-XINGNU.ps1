param([Parameter(Mandatory=$true)][string]$ModsPath,[switch]$CheckOnly)
$ErrorActionPreference='Stop'
& (Join-Path $PSScriptRoot 'Check-Versions.ps1') -ModsPath $ModsPath
& (Join-Path $PSScriptRoot 'localization\Install-Translations.ps1') -ModsPath $ModsPath -CheckOnly
if($CheckOnly){Write-Output 'Preflight passed. No files changed. This does not certify game or multiplayer compatibility.';return}
& (Join-Path $PSScriptRoot 'localization\Install-Translations.ps1') -ModsPath $ModsPath
Write-Output 'Translations applied; configurations left unchanged. Running strict host file comparison...'
& powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot 'Verify-Mods.ps1') -ModsPath $ModsPath
if($LASTEXITCODE -ne 0){throw 'Files still differ from the host snapshot. Keep this report; do not claim a complete match or join a production save yet.'}
Write-Output 'All non-configuration baseline files match. Perform the two-player test before starting the production farm.'