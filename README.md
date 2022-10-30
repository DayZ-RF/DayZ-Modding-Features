# DayZ Modding Features

### Mass-Convert-DeODOL3D
- Converter from PAA to PNG using 
- Converter from binarized P3D to debinarized P3D


##### Convert PAA to PNG
1. Change the source directory in 'PAA_DeODOL53_Looper.bat'

    ```
    set current_directory="YOUR_PATH"
    ```

2. Add files to 'PAA_Source' folder
3. Just run 'PAA_DeODOL53_Looper.bat'.


##### Convert P3D to debinarized P3D
1. Change the source directory in 'P3D_DeODOL53_Looper.bat'

    ```
    set current_directory="YOUR_PATH"
    ```

2. Add files to 'PAA_Source' folder
3. Just run 'P3D_DeODOL53_Looper.bat'.


### Scripting

This .bat file allows you to recompile your mod and to restart the server automaticaly. If there are a lot of f'ng errors, this bat will kill all of them and then start the new version of server.

1. Firstly configure the directory to pboProject.exe file
    ```set pboProject="C:\Program Files (x86)\Mikero\DePboTools\bin\pboProject.exe"```
2. Configure the list of mods, that mikera should compile. 
    - mods - list of mods. (one by one with space)
    - input - your disk P, change it, if it is different
    - output - destination, where the mods should be compiled. (dont forget the '@')
    - 
3. Configure DayZ Server starting area.
    - S_PROFILE_PATH - Folder with you server profiles
    - CLIENT - Client-side list of mods
    - SERVER - Server-side list of mods
4. Comment out the "taskkill" lines if you do not want to kill the running DayZ (server & client) applications.

One more feature, that i also use is...

You can create a new build in sublime text 3 and paste this lines. Then just press CTRL+B and wait for automatically compiling and running the DayZ server application.
```json
{
	"shell_cmd": "setlocal & cd /D \"F:\\Program Files\\steam\\steamapps\\common\\DayZServer\\profiles\" & call sublime.bat & endlocal"
}
```