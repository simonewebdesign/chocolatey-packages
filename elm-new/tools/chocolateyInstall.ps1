$url = "https://github.com/simonewebdesign/elm-new/archive/v$env:chocolateyPackageVersion-choco.zip"
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -Checksum 5caa1a4b5b47859e37130d689cc1327be3ca356a8e95ff738e68d655046e89c4 -ChecksumType sha256

Install-ChocolateyPath -PathToInstall "$installDir\$env:ChocolateyPackageName-$env:chocolateyPackageVersion-choco"
