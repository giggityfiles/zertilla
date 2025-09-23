@echo off
takeown /f C:\Windows\system32\Utilman.exe && icacls C:\Windows\system32\Utilman.exe /grant "%username%":M && rename C:\Windows\system32\Utilman.exe ~Utilman.exe
exit /b %errorlevel%