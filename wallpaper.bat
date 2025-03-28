@echo off
:: Loop 3 times
for /L %%i in (1,1,100) do (
    :: Reset wallpaper to default (no wallpaper)
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f

    :: Reset wallpaper for current user (this will be empty)
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d "D:\a\super-potato\super-potato\wallpaper.jpg" /f

    :: Set the dark mode for apps (turn on dark mode)
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Theme" /v AppsUseLightTheme /t REG_SZ /d "0" /f

    :: Set the dark mode for current user (turn on dark mode)
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_SZ /d "0" /f

    :: Set the dark mode for apps (turn on dark mode)
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Theme" /v SystemUsesLightTheme /t REG_SZ /d "0" /f

    :: Set the dark mode for current user (turn on dark mode)
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_SZ /d "0" /f

    :: Update the system parameters to apply the changes
    RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
)

echo dark mode enabled
