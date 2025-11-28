@echo off
set NETV=net6.0
dotnet run -c Release -f %NETV% -- -h
echo.
dotnet run -c Release -f %NETV% -- -o "Administrative Views\LOCAL MS SQL SERVER.json" -cs "Data Source=(local); Integrated Security=SSPI; TrustServerCertificate=true; Encrypt=false"
echo.
dotnet run -c Release -f %NETV% -- -o "Administrative Views\LOCAL MS SQL SERVER.json" -cs "Data Source=(local); Integrated Security=SSPI; TrustServerCertificate=true; Encrypt=false" -av
echo.

dotnet run -c Release -f %NETV% -- -o "Administrative Views\LOCAL MS SQL SERVER V2.json" -s "(local)"
echo.
dotnet run -c Release -f %NETV% -- -o "Administrative Views\LOCAL MS SQL SERVER V2.json" -s "(local)" -av

dotnet run -c Release -f %NETV% -- -all -av -o "Administrative Views\Discovered AV {InstanceNaMe}" 
dotnet run -c Release -f %NETV% -- -all     -o "Administrative Views\Discovered THE-FULL {InstanceNaMe} {VerSion} on {PlatforM}" 

dotnet run -c Release -f %NETV% -- -s "(local)"


