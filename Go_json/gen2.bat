set WORKSPACE=..

set LUBAN_DLL=..\Luban\Luban.dll
set CONF_ROOT=..

dotnet %LUBAN_DLL% ^
    -t client ^
    -c go-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=..\..\fzgame\api\config\game ^
    -x outputDataDir=..\..\fzgame\api\conf\json ^
    -x l10n.provider=default ^
    -x l10n.textFile.path=*@..\Datas\l10n\texts.json ^
    -x l10n.textFile.keyFieldName=key ^
    -x lubanGoModule=demo/luban

pause