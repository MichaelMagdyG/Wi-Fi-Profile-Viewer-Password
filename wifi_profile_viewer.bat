@echo off
:: Clear the screen
cls

:: Display all saved Wi-Fi profiles
echo Listing all Wi-Fi profiles...
setlocal enabledelayedexpansion
set counter=0

for /f "tokens=2 delims=:" %%i in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set /a counter+=1
    set profile[!counter!]=%%i
    echo !counter! - %%i
)

:: Prompt user to select a profile by its number
echo.
set /p choice="Enter the number of the Wi-Fi profile to view details: "

:: Remove leading/trailing spaces from the selected profile name
for /f "tokens=* delims= " %%i in ("!profile[%choice%]!") do set selectedProfile=%%i

:: Show the details of the selected Wi-Fi profile
if defined selectedProfile (
    echo Displaying details for "!selectedProfile!"...
    netsh wlan show profile name="!selectedProfile!" key=clear
) else (
    echo Invalid selection.
)

:: Pause the script so that the output remains visible
pause
