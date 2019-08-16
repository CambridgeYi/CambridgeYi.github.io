FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
COPY . /app/bin

WORKDIR /app/bin
ENV ASPNETCORE_URLS http://*:10043
ENV ConfigCenterOptions Host=http://10.10.102.252/ConfigCenter/Internal/;SecretKey=123456789012345678901234
 
ENTRYPOINT ["dotnet", "YangGuangGongCai.OutSiteApi.dll"]