#InstallPagadges

write-output "Installing softwares with Cholatey..."

$applist = @(

"chocolateygui",
"chocolatey-core.extension",
"googlechrome",
"firefox",
"7zip",
"sdio",
"kindle",
"discord",
"epicgameslauncher",
"origin",
"git",
"lightshot.install",
"logitechgaming",
"nodejs",
"sublimetext3",
"python",
"qbittorrent",
"steam",
"vlc",
"vscode",
"teamviewer",
"anydesk",
"curl",
"openjdk"
)

foreach($app in $applist) {

Write-Output  "Installing"  $app "..."

Start-Sleep -s 1

choco install $app -y --acceptlicense --force --no-progress --log-file="$env:USERPROFILE\Documents\workdir\temp\choco-install.log"

RefreshEnv

Start-Sleep -s 1

}