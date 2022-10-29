@echo off 

set current_directory="C:/Users/Root/Downloads/Rever/"

cd %current_directory%

set source_directory=P3D_Source
set target_directory=P3D_Target 

for %%K in (%source_directory%/*) do (
	echo "Opening %%K"
    DeODOL53.exe %source_directory%/%%K %target_directory% < nul
) pause