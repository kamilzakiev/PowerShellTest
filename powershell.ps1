$zipUrl = "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-windows.zip"
$zipFile = "phantomjs-2.0.0-windows.zip"
$zipDir = "$PSScriptRoot\extracted"
$phantomJsBinDir = "$zipDir\phantomjs-2.0.0-windows\bin"

echo "phantomJsBinDir $phantomJsBinDir"
<#
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($zipUrl,$zipFile)

If (Test-Path $zipDir){
  Remove-Item $zipDir -Force -Recurse
}

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory("phantomjs-2.0.0-windows.zip", "extracted")

Get-ChildItem

echo "$PSScriptRoot" 
echo $PSScriptRoot

echo "First Print Path"
echo ($env:Path).Replace(';',"`n")

echo "Set Path"
$env:Path += ";" + $phantomJsBinDir

echo "Second Print Path"
echo ($env:Path).Replace(';',"`n")
#>
