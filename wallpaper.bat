@echo off

:: Set the wallpaper path (ensure this path is accessible to all users)
set wallpaper_path=D:\a\super-potato\super-potato\wallpaper.jpg

:: Apply wallpaper for the current user
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

:: Apply wallpaper for all existing users
for /f "tokens=*" %%A in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList" /s /f "ProfileImagePath" 2^>nul') do (
    echo Applying wallpaper to user: %%A
    reg add "%%A\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
    RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
)

:: Apply wallpaper for the default user (new users)
reg add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper_path%" /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

echo Wallpaper applied to current user, all existing users, and the default user profile.
