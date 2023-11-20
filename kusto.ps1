######################################################
#   Get Kusto Explorer Installer as link on Desktop  #
######################################################

# Specify the URL to download the file from
$downloadUrl = "https://aka.ms/ke"

# Specify the path to save the file on the desktop
$desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("Desktop"), "KustoExplorer.application")

# Perform the web request and save the file to the desktop
try {
    Invoke-WebRequest -Uri $downloadUrl -OutFile $desktopPath -UseBasicParsing
    Write-Host "File downloaded successfully. Path: $desktopPath"
} catch {
    Write-Host "Failed to download the file. Error: $_"
}
