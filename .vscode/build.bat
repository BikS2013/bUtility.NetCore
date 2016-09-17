@ECHO OFF
::run build commands

rem CMD /C where /q gulp || npm install gulp -g
rem CMD /C where /q tsc || npm install typescript -g
rem CMD /C where /q typings || npm install typings -g
rem CMD /C npm install
rem CMD /C gulp clean
CMD /C dotnet restore
echo dotnet build %2
CMD /C dotnet build %2
CMD /C dotnet pack %3bUtility --no-build
CMD /C dotnet pack %3bUtility.Dapper --no-build
CMD /C dotnet pack %3bUtility.Logging --no-build
CMD /C dotnet pack %3bUtility.Json --no-build 
rem CMD /C tsc -p App 
rem CMD /C gulp moveToLibs
rem CMD /C gulp moveToApp
::exit
Goto :eof