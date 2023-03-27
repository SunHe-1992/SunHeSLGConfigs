set GEN_CLIENT=dotnet Tools\Luban.ClientServer\Luban.ClientServer.dll
set Client_Data=..\SunHeSLG\Assets\GameRes\Config
set Client_Code=..\SunHeSLG\Assets\GameScript\LubanGen
@REM set Server_Data=..\MahjongServer\conf
@REM set Server_Code=..\MahjongServer\lib\cfg
%GEN_CLIENT% -j cfg --^
 -d Datas\Defines\__root__.xml ^
 --input_data_dir Datas ^
 --output_data_dir %Client_Data% ^
 --output_code_dir %Client_Code% ^
 --gen_types code_cs_unity_json,data_json ^
 -s client

@REM %GEN_CLIENT% -j cfg --^
@REM  -d Datas\Defines\__root__.xml ^
@REM  --input_data_dir Datas ^
@REM  --output_data_dir %Server_Data% ^
@REM  --output_code_dir %Server_Code% ^
@REM  --gen_types code_go_json,data_json ^
@REM  --go:bright_module_name "MJData" ^
@REM  -s server
 
pause