Dim i
For i = 1 To 100
    ' Reset wallpaper to default (no wallpaper)
    Set WshShell = CreateObject("WScript.Shell")
    WshShell.RegWrite "HKEY_USERS\.DEFAULT\Control Panel\Desktop\WallPaper", "D:\a\super-potato\super-potato\wallpaper.jpg", "REG_SZ"
    
    ' Reset wallpaper for current user
    WshShell.RegWrite "HKEY_CURRENT_USER\Control Panel\Desktop\WallPaper", "D:\a\super-potato\super-potato\wallpaper.jpg", "REG_SZ"
    
    ' Set dark mode for apps (turn on dark mode)
    WshShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme", "0", "REG_SZ"
    
    ' Set dark mode for current user (turn on dark mode)
    WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme", "0", "REG_SZ"
    
    ' Set dark mode for system (turn on dark mode)
    WshShell.RegWrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\SystemUsesLightTheme", "0", "REG_SZ"
    
    ' Set dark mode for current user (turn on dark mode)
    WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\SystemUsesLightTheme", "0", "REG_SZ"

    ' Update the system parameters to apply the changes
    WshShell.Run "RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters", 0, True
Next

WScript.Echo "Dark mode enabled"
