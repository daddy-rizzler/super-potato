@echo off
:: Reset wallpaper to default (no wallpaper)
reg add "HKEY_USERS\.DEFAULT\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f

:: Reset wallpaper for current user (this will be empty)
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f

:: Set the light theme for apps (turn on light theme)
reg add "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_SZ /d "1" /f

:: Set the light theme for current user (turn on light theme)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_SZ /d "0" /f

:: Update the system parameters to apply the changes
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
