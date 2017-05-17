$RemoteMachineName = Read-Host 'Enter the remote machine name'
Get-CimInstance -computername $RemoteMachineName Win32_LogicalDisk -Filter "DeviceID='C:'" | select @{n='freegb';e={$_.FreeSpace / 1GB -as [int]}}
