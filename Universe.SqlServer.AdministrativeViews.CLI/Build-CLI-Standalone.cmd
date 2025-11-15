set BUILD_SQLSERVER_ADMINISTRATIVE_VIEWS=M:\Temp\Universe.SqlServer.AdministrativeViews.CLI-BUILD
rem mkdir %BUILD_SQLSERVER_ADMINISTRATIVE_VIEWS%\PUBLIC
set COMPRESSION_LEVEL=9
rd /q /s "%BUILD_SQLSERVER_ADMINISTRATIVE_VIEWS%"
rd /q /s "bin"
powershell -f Build-CLI-NetFramework.ps1 
if ERRORLEVEL 1 Goto :err
rem ON LINUX!!!! for +x
powershell -f Build-CLI-Standalone.ps1
if ERRORLEVEL 1 Goto :err
goto :end

:err
echo FAIL. Abort

:end
