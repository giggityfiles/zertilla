@echo off
set "fonturl=https://github.com/giggityfiles/zertilla/raw/refs/heads/main/NotSegoeUI-Regular.ttf"
set "fontfile=%~dp0NotSegoeUI-Regular.ttf"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%fonturl%', '%fontfile%')"
copy "%fontfile%" "%WINDIR%\Fonts\" >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "NotSegoeUI (TrueType)" /t REG_SZ /d "NotSegoeUI-Regular.ttf" /f
for %%F in ("Segoe UI (TrueType)" "Segoe UI Bold (TrueType)" "Segoe UI Italic (TrueType)" "Segoe UI Bold Italic (TrueType)" "Segoe UI Semibold (TrueType)" "Segoe UI Light (TrueType)" "Segoe UI Symbol (TrueType)") do (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v %%F /t REG_SZ /d "NotSegoeUI-Regular.ttf" /f
)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes" /v "Segoe UI" /t REG_SZ /d "NotSegoeUI" /f
echo.
echo Done! Please sign out or restart Windows for changes to take effect.
pause
