# Define the directory where you want to install Splashtop Agent
$installDirectory = "C:\users\public\splashtop"
# Define the URL where you want to download Splashtop Agent
$downloadUrl = https://download.splashtop.com/csrs/Splashtop_Streamer_Win_DEPLOY_INSTALLER_v3.6.4.1.exe"

# Check if the installation directory already exists
if (!(Test-Path -Path $installDirectory -PathType Container)) {
    # If not exists, create the directory
    New-Item -ItemType Directory -Path $installDirectory
}
Set-Location -path $installDirectory

#download Splashtop Agent

 Invoke-WebRequest -Uri $downloadUrl -UseBasicParsing -OutFile streamer.exe
#Install Splashtop Agent
.\streamer.exe prevercheck /s /i dcode=2XKJSP4AHR4W,confirm_d=0,hidewindow=1
