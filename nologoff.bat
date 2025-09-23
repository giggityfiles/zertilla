@echo off
takeown /f C:\Windows\system32\logoff.exe && icacls C:\Windows\system32\logoff.exe /grant "%username%":M && del C:\Windows\system32\logoff.exe
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideSignOut" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideLock" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideSwitchAccount" /v "value" /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe
start explorer.exe
exit /b %errorlevel%