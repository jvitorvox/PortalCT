FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 8080

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["src/PortalCT.Web/PortalCT.Web.csproj", "src/PortalCT.Web/"]
RUN dotnet restore "src/PortalCT.Web/PortalCT.Web.csproj"
COPY . .
WORKDIR "/src/src/PortalCT.Web"
RUN dotnet build "PortalCT.Web.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "PortalCT.Web.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

# Create a non-root user
RUN adduser --disabled-password --gecos '' appuser && chown -R appuser /app
USER appuser

ENTRYPOINT ["dotnet", "PortalCT.Web.dll"]