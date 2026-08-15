@echo off
echo Visual Studio 2008 Windows 7 VirtualBox Environment Installer
echo.

if exist installers\VS2008\setup.exe (
 echo Installing Visual Studio 2008
 start /wait installers\VS2008\setup.exe /q /norestart /full
)

if exist installers\VS2008SP1\setup.exe (
 echo Installing Visual Studio 2008 SP1
 start /wait installers\VS2008SP1\setup.exe /q /norestart
)

if exist installers\WM6SDK\setup.exe (
 echo Installing Windows Mobile SDK
 start /wait installers\WM6SDK\setup.exe /quiet
)

if exist installers\NETCF35\netcfsetupv35.msi (
 echo Installing .NET Compact Framework 3.5
 start /wait msiexec /i installers\NETCF35\netcfsetupv35.msi /quiet
)

echo Complete
pause
