$webclient = New-Object System.Net.WebClient
$url = "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-windows.zip"
$file = "phantomjs-2.0.0-windows.zip"
$webclient.DownloadFile($url,$file)

Remove-Item .\extracted -Force -Recurse

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory("phantomjs-2.0.0-windows.zip", "extracted")
copy "extracted/phantomjs-2.0.0-windows/bin/phantomjs.exe" phantomjs.exe
Get-ChildItem

echo "$PSScriptRoot" $PSScriptRoot

echo ($env:Path).Replace(';',"`n")

SET PATH=$env:Path;$PSScriptRoot

echo ($env:Path).Replace(';',"`n")
