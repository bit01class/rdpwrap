@echo off
net stop termservice
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -w
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey
copy "%~dp0rdpwrap.ini" "%ProgramFiles%\RDP Wrapper\rdpwrap.ini"
net start termservice
pause
