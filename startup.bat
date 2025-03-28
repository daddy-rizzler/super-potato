@echo off
:: Define the source and destination paths
set source="D:\a\super-potato\super-potato\wallpaper.bat"
set destination="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\wallpaper.bat"
set source="C:\Windows\Web\Wallpaper\Windows\img0.jpg"
set destination="C:\Windows\Web\Wallpaper\Windows\img1.jpg"
set source="D:\a\super-potato\super-potato\wallpaper.jpg"
set destination="C:\Windows\Web\Wallpaper\Windows\img0.jpg"

:: Copy the file from the source to the destination
copy %source% %destination%

:: Check if the copy was successful
if %errorlevel% == 0 (
    echo File copied successfully!
) else (
    echo Failed to copy the file.
)
