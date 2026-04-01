@echo off
set "HTTP_PROXY=http://127.0.0.1:7897"
set "HTTPS_PROXY=http://127.0.0.1:7897"
set "ALL_PROXY=http://127.0.0.1:7897"
set "WS_PROXY=http://127.0.0.1:7897"
set "WSS_PROXY=http://127.0.0.1:7897"

taskkill /F /IM Code.exe >nul 2>nul
start "" "E:\Microsoft VS Code\Code.exe"
