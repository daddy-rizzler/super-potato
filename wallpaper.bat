@echo off
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f
echo Successfully applied wallpaper.
reg add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
reg add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f
echo Successfully applied wallpaper for all users.
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
