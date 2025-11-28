dotnet run -c Release -f net6.0 -- -s "(local)" -av -o "Administrative Views\Local\Server AV" 
dotnet run -c Release -f net6.0 -- -s "(local)" -o "Administrative Views\Local\Server InstanceName\{InstanceName}" 
dotnet run -c Release -f net6.0 -- -s "(local)" -o "Administrative Views\Local\Server Version\{Version}" 
dotnet run -c Release -f net6.0 -- -s "(local)" -o "Administrative Views\Local\Server Platform\{Platform}" 
dotnet run -c Release -f net6.0 -- -s "(local)" -o "Administrative Views\Local\Server THE-FULL\{InstanceName} {Version} on {Platform}" 



