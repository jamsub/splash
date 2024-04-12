# Define the directory where you want to install Splashtop Agent
$installDirectory = "C:\users\public\splashtop"
# Define the URL where you want to download Splashtop Agent
$downloadUrl = "https://cloudbuild.splashtop.com/D5501271504299378C5F9062C69C2D78/YS2X5WTKSHS2/37a6259cc0c1dae299a7866489dff0bd/3.6.4.1/Splashtop_Streamer_Windows_DEPLOY_INSTALLER_v3.6.4.1_YS2X5WTKSHS2.exe"

# Check if the installation directory already exists
if (!(Test-Path -Path $installDirectory -PathType Container)) {
    # If not exists, create the directory
    New-Item -ItemType Directory -Path $installDirectory
}
Set-Location -path $installDirectory

# Define download URL for Splashtop Agent

 Invoke-WebRequest -Uri $downloadUrl -UseBasicParsing

streamer.exe prevercheck /s /i dcode=YS2X5WTKSHS2,confirm_d=0,hidewindow=1