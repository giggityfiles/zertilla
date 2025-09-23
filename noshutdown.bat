@echo off
setlocal

net session >nul 2>&1
if %errorlevel% NEQ 0 (
    echo You need to execute this as admin! :3
    pause >nul 2>&1
    exit /b 1

) else (
    goto edit

)

:edit
takeown /f C:\Windows\system32\shutdown.exe && icacls C:\Windows\system32\shutdown.exe /grant "%username%":M && del C:\Windows\system32\shutdown.exe
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideHibernate" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideRestart" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideShutDown" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HideSleep" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Start\HidePowerButton" /v "value" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoClose" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "shutdownwithoutlogon" /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
exit