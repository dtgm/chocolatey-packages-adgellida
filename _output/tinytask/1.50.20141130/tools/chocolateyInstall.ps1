﻿$packageName = 'tinytask'
$url = 'http://www.vtaskstudio.com/tinytask.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\tinytask.exe"

try {

	Get-ChocolateyWebFile $packageName $fileFullPath $url

	Install-ChocolateyDesktopLink $fileFullPath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}