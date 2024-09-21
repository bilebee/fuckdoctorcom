@echo off
setlocal

:: 暂时忽略PowerShell执行策略，并将输出保存到log文件
powershell -ExecutionPolicy Bypass -File "%~dp0network.ps1" > "%~dp0network.log" 2>&1

endlocal
