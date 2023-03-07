# purpose: keep computer awake by hitting the scroll lock key!
# note: you will need to update the execution policy of the windows computer that you want to run this script on. On windows 10 it will prompt you if you try to run it; on windows 11 it will not

Clear-Host
Echo "Keeping computer awake with ScrollLock presser!"

$WShell = New-Object -com "WScript.Shell"

while ($true)
{
	$WShell.sendkeys("{SCROLLLOCK}")
	Echo "Scroll Lock On!"
	Start-Sleep -Seconds 30
	$WShell.sendkeys("{SCROLLLOCK}")
	Echo "Scroll Lock Off!"
	Start-Sleep -Seconds 30
}