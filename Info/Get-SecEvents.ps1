param(
[int]$EventId,
[int]$Newest = 5
)

Get-WinEvent -FilterHashtable @{Logname="Security";Id=$EventId} | Select-Object -First $Newest
