$ProgramName = "Choco Upgrade"

$taskExists = Get-ScheduledTask | Where-Object {$_.TaskName -like $ProgramName }
if($taskExists) {
    Write-Host "Found it!"
}