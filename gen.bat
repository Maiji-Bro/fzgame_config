set WORKSPACE=..
set LUBAN_DLL=.\Luban\Luban.dll
set CONF_ROOT=.
set DOTNET_ROLL_FORWARD=LatestMajor

dotnet %LUBAN_DLL% ^
    -t client ^
    -d json ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=../../Assets/Project/Configs

pause