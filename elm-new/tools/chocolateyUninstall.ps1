$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pathToRemove = "$installDir\$env:ChocolateyPackageName-$env:chocolateyPackageVersion-choco"

foreach ($path in [Environment]::GetEnvironmentVariable("PATH", "User").split(';'))
{
  If ($path)
  {
    If (($path -ine "$pathToRemove") -AND ($path -ine "$pathToRemove\"))
    {
      [string[]]$newpath += "$path"
    }
  }
}
$assembledNewPath = ($newpath -join(';')).trimend(';')

[Environment]::SetEnvironmentVariable("PATH", $assembledNewPath, "User")
