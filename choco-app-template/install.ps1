$PackageName = "firefox"
$InstallParameter = $null
$logs = "$Env:Programfiles\Agaru\EndpointManager"
Start-Transcript -Path "$logs\Log\$PackageName-install.log" -Force

Try{
    C:\ProgramData\chocolatey\choco.exe upgrade $PackageName -y $InstallParameter
}
catch {
    Throw "Failed to install $PackageName"
}

Stop-Transcript