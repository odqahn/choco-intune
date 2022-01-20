# Packager settings

| Param      | Value |
| ----------- | ----------- |
| Win32 File | install.intunewin |
| Name | Chocolatey Updater |
| Description | Chocolatey Updater |
| Publisher | Agaru |
| Logo | chocolatey.png |
| Install command | powershell.exe -executionpolicy bypass .\install.ps1 |
| Uninstall command | powershell.exe -executionpolicy bypass \uninstall.ps1 |
| Requirements | 64 bit |
| Detection rule | custom script, check.ps1 |
