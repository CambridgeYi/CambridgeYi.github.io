FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
COPY . /app/bin

WORKDIR /app/bin
# 服务器同步上海时间
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV ASPNETCORE_URLS http://*:10043
ENV ConfigCenterOptions Host=http://10.10.102.252/ConfigCenter/Internal/;SecretKey=123456789012345678901234
 
ENTRYPOINT ["dotnet", "YangGuangGongCai.OutSiteApi.dll"]