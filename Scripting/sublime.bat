@echo off 

echo ================== Taskkill ====================

rem taskkill /F /IM DayZ_x64.exe
taskkill /F /IM DayZServer_x64.exe
timeout 1

echo ================== Mikero ====================

set pboProject="C:\Program Files (x86)\Mikero\DePboTools\bin\pboProject.exe"
set X=*.h,*.hpp,*.png,*.cpp*,.txt,thumbs.db,*.dep,*.bak,*.log,*.pew,source,*.tga,*.bat,*.psd,*.cmd,*.cache,*.tv4l,*.tv4s,*.tml,*.vdat,*.v4w,*.tv4p,*.v4d,*.asc,*.html,*.bmp,*.pbo
set Z=*.wss,*.ogg,.jpg,.wav,.fsm,.pa*,*.fsm
set E=DAYZSA

set mods=MiningFarmServer
set input=P:\
set output=F:\Program Files\steam\steamapps\common\DayZServer\@

(for %%a in (%mods%) do ( 
    %pboProject% %input%%%a -P +J +C +E=%E% -M="%output%%%a" -X=%X% -Z=%Z%
    echo %%a
    timeout 1
))


echo ================== Profiles ====================

set S_PROFILE_PATH=F:\Program Files\steam\steamapps\common\DayZServer\profiles

CD /D %S_PROFILE_PATH%

del /Q "%S_PROFILE_PATH%\*.log"
del /Q "%S_PROFILE_PATH%\*.RPT"
del /Q "%S_PROFILE_PATH%\*.mdmp"

set CLIENT=@CF;@VPPAdminTools;@Trader;@SM_Cargo
set SERVER=@MiningFarmServer;

echo ================== Start ====================

start "" "../DayZServer_x64.exe" -config=serverDZ.cfg -port=2302 -profiles=profiles -dologs -netlog -freezecheck "-mod=%CLIENT%" "-servermod=%SERVER%" "-BEpath=F:\Program Files\steam\steamapps\common\DayZServer\battleye"



rem ------------ BUILD CONFIG FOR SUBLIME TEXT 3 ------------
rem {
rem 	"shell_cmd": "setlocal & cd /D \"F:\\Program Files\\steam\\steamapps\\common\\DayZServer\\profiles\" & call s_DFDM.bat & endlocal"
rem }
