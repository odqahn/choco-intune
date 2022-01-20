$PackageName = "choco-upgrade"

$logs = "$Env:Programfiles\Agaru\EndpointManager"
Start-Transcript -Path "$logs\Log\$PackageName-install.log" -Force

# Check choco.exe 
$localprograms = C:\ProgramData\chocolatey\choco.exe list --localonly
if ($localprograms -like "*Chocolatey*") {
    Write-Host "Chocolatey installed"
}
else {
    Write-Host "Chocolatey not Found!"
    break
}

# Scheduled Task for "choco upgrade -y"
$schtaskName = "Choco Upgrade"
$schtaskDescription = "Choco packages upgrade task. "
$trigger1 = New-ScheduledTaskTrigger -AtStartup
$trigger2 = New-ScheduledTaskTrigger -Weekly -WeeksInterval 1 -DaysOfWeek Friday -At 4pm
$principal = New-ScheduledTaskPrincipal -UserId 'SYSTEM'
$action = New-ScheduledTaskAction –Execute "C:\ProgramData\chocolatey\choco.exe" -Argument 'upgrade all -y'
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

Register-ScheduledTask -TaskName $schtaskName -Trigger $trigger1, $trigger2 -Action $action -Principal $principal -Settings $settings -Description $schtaskDescription -Force

Stop-Transcript