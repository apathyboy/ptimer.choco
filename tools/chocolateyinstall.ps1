$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'ptimer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/apathyboy/ptimer/releases/download/v1.0.2/ptimer.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU' #only one of these: exe, msi, msu
  url           = $url

  checksum      = '11235EDF2C5E9B8135934167C7401CEF550E260FFCBD4DD0FFA283C71045813C'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
