# Packager settings

| Param      | Value |
| ----------- | ----------- |
| Win32 File | install.intunewin |
| Name | Chocolatey |
| Description | Chocolatey Package Manager |
| Publisher | Agaru |
| Logo | chocolatey.png |
| Install command | powershell.exe -executionpolicy bypass .\install.ps1 |
| Uninstall command | powershell.exe -executionpolicy bypass \uninstall.ps1 |
| Requirements | 64 bit |
| Detection rule | custom script, check.ps1 |
| Dependency | Chocolatey Updater |
