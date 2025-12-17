```powershell
$header = "<style>"
$header = $header + "BODY{background-color:Ivory;}"
$header = $header + "TABLE{border-width: 3px;border-style: solid;border-color: Green;border-collapse: collapse;}"
$header = $header + "TH{border-width: 2px;padding: 0px;border-style: solid;border-color: LightGray;background-color:Gainsboro}"
$header = $header + "TD{border-width: 1px;padding: 0px;border-style: solid;border-color: LightGray;background-color:HoneyDew}"
$header = $header + "</style>"

$HtmlBody = Get-Service | Select-Object -Property Status,Name,DisplayName | ConvertTo-Html -Head $header -Body "<H2>Dienst Infos</H2>" 

#zb. als Email
Send-MailMessage -Body $HtmlBody -BodyAsHtml ...
#oder speichern
$HtmlBody | Out-file -Path ....

```