$webclient = New-Object System.Net.WebClient
$url = "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-windows.zip"
$file = "phantomjs-2.0.0-windows.zip"
$webclient.DownloadFile($url,$file)

If (Test-Path $strFolderName){
  Remove-Item .\extracted -Force -Recurse
}

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory("phantomjs-2.0.0-windows.zip", "extracted")
copy "extracted/phantomjs-2.0.0-windows/bin/phantomjs.exe" phantomjs.exe
Get-ChildItem

echo "$PSScriptRoot" 
echo $PSScriptRoot

echo "First Print Path"
echo ($env:Path).Replace(';',"`n")

echo "Set Path"
SET PATH=$env:Path;$PSScriptRoot

echo "Second Print Path"
echo ($env:Path).Replace(';',"`n")
