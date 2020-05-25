$url = "https://github.com/simonewebdesign/elm-new/archive/v$env:chocolateyPackageVersion.zip"
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir

Install-ChocolateyPath -PathToInstall "$installDir\$env:ChocolateyPackageName-$env:chocolateyPackageVersion"
