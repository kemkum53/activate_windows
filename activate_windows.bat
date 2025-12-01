@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This file is not running as admin. Restarting with admin privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

slmgr.vbs /upk
slmgr.vbs /cpky
slmgr.vbs /ckms

sc config LicenseManager start= auto & net start LicenseManager
sc config wuauserv start= auto & net start wuauserv
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T

slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato

echo All done...
pause
