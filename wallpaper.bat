@echo off

:: Set the wallpaper path (make sure this is the correct path to the wallpaper file)
set wallpaper_path=D:\a\super-potato\super-potato\wallpaper.jpg

:: Apply the wallpaper for all users
for /f "tokens=*" %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /s /f "ProfileImagePath" 2^>nul') do (
    echo Applying wallpaper to user: %%A
    reg add "%%A\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
    RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
)

:: Apply the wallpaper to the current user as well
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

echo Wallpaper applied for all users.
