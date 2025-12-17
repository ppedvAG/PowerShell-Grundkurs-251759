### Schleifen
[about_For](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_for?view=powershell-5.1)
```powershell
for($i = 0; $i -le 10; $i++)
{
    #Schleifenkörper
}
```
---
[about_Foreach](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_foreach?view=powershell-5.1)
```powershell
$Users = Get-AdUser -Filter *
foreach($User in $Users)
{
    #Schleifenkörper
    $User.GivenName
}
```
---
[about_While](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_while?view=powershell-5.1)
```powershell
while($true)
{
    #Schleifenkörper
}
```
---
[about_do](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_do?view=powershell-5.1)
```powershell
do
{
    #Schleife wird mindestens einmal durchlaufen und läuft weiter solange unten in der Prüfung $true rauskommt
}while($true)
```
```powershell
do
{
    #Schleife wird mindestens einmal durchlaufen und läuft weiter solange die Prüfung $false ergibt
}until($false)
```