<#Author       : Ayoub Malkaoui
# Usage        : Install VSCode and Notepad++ using Chocolatey
#>

###################################################
#   Install VSCode and Notepad++  #
###################################################

# Install Chocolatey if not already installed
if (!(Test-Path "C:\ProgramData\chocolatey\choco.exe")) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Visual Studio Code using Chocolatey
Write-Host "Installing Visual Studio Code..."
choco install -y vscode

Write-Host "Visual Studio Code installation complete."

# Install Notepad++ using Chocolatey
Write-Host "Installing Notepad++..."
choco install -y notepadplusplus

Write-Host "Notepad++ installation complete."



