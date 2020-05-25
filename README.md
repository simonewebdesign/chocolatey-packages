# Chocolatey Packages

Home repo for the Chocolatey packages that I maintain.

https://chocolatey.org/profiles/simone

## Usage

Generate a NuGet package (`.nupkg`) with:

    choco pack

Install a package using the installation scripts:

    cd <package-name>
    choco install <package-name> -s . -y

Push a package to Chocolatey:

    choco push somepackage.nupkg --api-key <key> --source https://push.chocolatey.org/
