@echo off
:: Define the source and destination paths
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
set source="D:\a\super-potato\super-potato\wallpaper.bat"
set destination="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\wallpaper.bat"

:: Copy the file from the source to the destination
copy %source% %destination%

:: Check if the copy was successful
if %errorlevel% == 0 (
    echo File copied successfully!
) else (
    echo Failed to copy the file.
)
