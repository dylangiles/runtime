Write-Host "Starting Elide Runtime dev session..."
if (-not (Test-Path ".\build")) {
    New-Item -ItemType Directory build
} 

tools\scripts\launch.ps1


