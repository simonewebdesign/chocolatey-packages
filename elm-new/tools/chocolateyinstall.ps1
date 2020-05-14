$version = '2.0.0'
$url = "https://github.com/simonewebdesign/elm-new/archive/v$version.zip"
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage 'elm-new' "$url" "$installDir"

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";$installDir\elm-new-$version", "Machine")
