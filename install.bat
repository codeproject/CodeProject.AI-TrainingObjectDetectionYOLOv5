:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                  YOLO Object Detection Model Training
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat 
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

:: Download the YOLO models and custom models and store in /assets
call "%utilsScript%" GetFromServer "models/" "models-yolo5-pt.zip" "assets" "Downloading Standard YOLO models..."

REM TODO: Check assets created and has files
REM set moduleInstallErrors=...
