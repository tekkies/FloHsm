# Boxstarter setup script
 
# Notes:
#  - This file has to be idempotent. it will be run several times if the
#    computer needs to be restarted. When that happens, Boxstarter schedules
#    this script to run again with an auto-logon. Fortunately choco install
#    handles trying to install the same package more than once.
#  - Pass -y to choco install to avoid interactive prompts
 
 
# Fix Windows Explorer
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar
 
# Useful apps
choco install -y googlechrome
choco install -y firefox
choco install -y 7zip
choco install -y notepadplusplus
choco install -y -params '"/GitAndUnixToolsOnPath /NoAutoCrlf"' git 
choco install -y nugetpackageexplorer
choco install -y sed

choco install -y --version 3.11.0 python
refreshenv
python.exe -m pip install --upgrade pip
pip install ply==3.11
pip install Mako==1.2.4
pip install pyinstaller==5.8.0
refreshenv


Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Mozilla Firefox\firefox.exe"
