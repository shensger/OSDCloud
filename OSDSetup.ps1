Set-ExecutionPolicy RemoteSigned -Force
 
Install-Module OSD -Force
 
Import-Module OSD -Force
 
New-OSDCloudTemplate
 
New-OSDCloudWorkspace -WorkspacePath C:\OSDCloud
 
New-OSDCloudUSB
 
Edit-OSDCloudwinPE -workspacepath C:\OSDCloud -CloudDriver * -WebPSScript https://gist.githubusercontent.com/shensger/ce75601a9abd038d4bf2933b8bacd254/raw/48d693de10b8d28e348f338633ade01fd8de1044/Win11Ninja.ps1 -Verbose
 
New-OSDCloudISO
 
Update-OSDCloudUSB
