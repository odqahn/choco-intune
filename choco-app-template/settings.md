# Packager settings

| Param      | Value |
| ----------- | ----------- |
| Win32 File | install.intunewin |
| Name | App Name |
| Description | App desc |
| Publisher | Agaru |
| Logo | add the app logo (look on google ;) ) |
| Install command | powershell.exe -executionpolicy bypass .\install.ps1 |
| Uninstall command | powershell.exe -executionpolicy bypass \uninstall.ps1 |
| Requirements | 64 bit |
| Detection rule | Check for the exe, or a folder? |
| Dependency | Chocolatey |
