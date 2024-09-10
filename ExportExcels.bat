set WORKSPACE=..
set LUBAN_DLL=Tools\Luban.dll
set CONF_ROOT=.
set Client_Data=E:\Study\DragonWingGroupProject\Assets\Resources\Config
set Client_Code=E:\Study\DragonWingGroupProject\Assets\GameScript\LubanGen
dotnet %LUBAN_DLL% ^
    -t client ^
    -c cs-simple-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=%Client_Data% ^
    -x outputCodeDir=%Client_Code%

pause