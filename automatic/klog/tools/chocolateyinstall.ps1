﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://download.savannah.gnu.org/releases/klog/win/KLog-0.9.7-windows-installer.exe'

  softwareName  = 'klog*'

  checksum      = 'd26c9946bb9cf4594935446ef3d3344b796fdd2dff2959831c2e1e555416a90e'
  checksumType  = 'sha256'
  
  silentArgs    = "--mode unattended"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
