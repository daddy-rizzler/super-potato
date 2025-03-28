@echo off
:: Define the source and destination paths
set source="D:\a\super-potato\super-potato\setup.vbs"
set destination="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\setup.vbs"

:: Copy the file from the source to the destination
copy %source% %destination%

:: Check if the copy was successful
if %errorlevel% == 0 (
    echo File copied successfully!
) else (
    echo Failed to copy the file.
)
