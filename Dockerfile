FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /source
COPY ./Deploy .
COPY ./FileServer .
RUN dotnet restore
RUN dotnet publish -c Release -o /publish
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /data
WORKDIR /publish
COPY --from=build-env /publish .
EXPOSE 80

ENTRYPOINT ["dotnet", "FileServer.dll"]