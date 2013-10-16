﻿$packageName = 'goodsync'
$installerType = 'EXE'
$url = 'http://www.goodsync.com/download/GoodSync-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

Remove-Item "C:\Users\Public\Desktop\GoodSync Explorer.lnk"