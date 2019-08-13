$OutputEncoding = New-Object -typename System.Text.UTF8Encoding
Set-Location E:\code\colipu\webapi3\WebApi.Restful\bin\Debug\netcoreapp2.1\publish
#  过滤掉appsettings.json,log4net.config,hostsettings.json
Get-ChildItem ./* | Where-Object { $_.Name -eq 'appsettings.json' -or $_.Name -eq 'log4net.config' -or $_.Name -eq 'hostsettings.json'} | Remove-Item
Write-Host "filter appsettings.json,log4net.config,hostsettings.json success" -ForegroundColor Red -BackgroundColor Yellow

$remoteAddr="106.15.188.60";
Write-Host "start copy to remote $remoteAddr"
pscp -r -pw Aa123456 .\ api@${remoteAddr}:/home/api/apis/WebApi.Restful/app/
Write-Host "copy success,restart..."
# plink -pw Aa123456 api@${remoteAddr} "sudo supervisorctl restart WebApi.Restful"

Write-Host "please restart supervisor service,bye!"

Set-Location C:\Users\dong.liu\Desktop\sh