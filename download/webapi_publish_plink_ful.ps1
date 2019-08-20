$OutputEncoding = New-Object -typename System.Text.UTF8Encoding

dotnet publish E:\code\colipu\webapi3\WebApi.Restful\WebApi.Restful.csproj -o E:\code\colipu\webapi3\WebApi.Restful\bin\Debug\netcoreapp2.1\publish 
# "106.15.188.60","47.101.222.236"
$remoteAddrs=@("106.15.188.60","47.101.222.236")
foreach ($remoteAddr in $remoteAddrs)
{
    Write-Host "***********start publish $remoteAddr"
    Set-Location E:\code\colipu\webapi3\WebApi.Restful\bin\Debug\netcoreapp2.1\publish
    #  过滤掉appsettings.json,log4net.config,hostsettings.json
    Get-ChildItem ./* | Where-Object { $_.Name -eq 'appsettings.json' -or $_.Name -eq 'log4net.config' -or $_.Name -eq 'hostsettings.json'} | Remove-Item
    Write-Host "filter appsettings.json,log4net.config,hostsettings.json success" -ForegroundColor Red -BackgroundColor Yellow
    
    $command=@('newDirectory1="app-"$(date +%Y%m%d%H%m%s);mkdir -p /home/api/apis/WebApi.Restful/$newDirectory1;cp -r /home/api/apis/WebApi.Restful/app/. /home/api/apis/WebApi.Restful/$newDirectory1/;rm -rf /home/api/apis/WebApi.Restful/app/*;cp /home/api/apis/WebApi.Restful/{*.json,*.config} /home/api/apis/WebApi.Restful/app/')
    #  linux开始备份
    plink -v -ssh -P "22" -pw Aa123456 api@${remoteAddr} $command
    
    # copy到60
    
    Write-Host "***********start copy to remote $remoteAddr"
    pscp -r -pw Aa123456 .\ api@${remoteAddr}:/home/api/apis/WebApi.Restful/app/
    Write-Host "***********copy success,restart..."
    
    
    # 重启supervisor
    plink -v  -P 22 -pw Aa123456 api@${remoteAddr} "sudo supervisorctl restart WebApi.Restful"
    
    
    Write-Host "***********publish ${remoteAddr} success"
}
Set-Location C:\Users\dong.liu\Desktop\sh