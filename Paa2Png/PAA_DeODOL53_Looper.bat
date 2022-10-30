@echo off 

set current_directory="D:/Github/Mass-Convert-PAA-PNG-DeODOL3D/Paa2Png/"

cd %current_directory%

set source_directory=PAA_Source
set target_directory=PAA_Target 

if not exist "%target_directory%" mkdir "%target_directory%"

for %%K in (%source_directory%/*) do (
    cd %target_directory%
    "../Pal2PacE.exe" ../%source_directory%/%%K "%%~nK.png"
    cd ..
)
