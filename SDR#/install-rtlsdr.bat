@echo off

mkdir tmp

echo Downloading RTLSDR Driver
httpget http://osmocom.org/attachments/download/2242/RelWithDebInfo.zip tmp\RelWithDebInfo.zip

echo Downloading Zadig
set zadig_url=b721/zadig-2.4.exe
ver | findstr /l "5.1." > NUL
if %errorlevel% equ 0 set zadig_url=v1.2.5/zadig_xp-2.2.exe
httpget http://github.com/pbatard/libwdi/releases/download/%zadig_url% zadig.exe

unzip -o tmp\RelWithDebInfo.zip -d tmp
move tmp\rtl-sdr-release\x32\rtlsdr.dll .

rmdir tmp /S /Q

pause