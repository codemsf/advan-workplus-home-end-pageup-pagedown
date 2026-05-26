@echo off
setlocal
title Install KeyRemap to Startup

:: ============================================================
::  Pasang KeyRemap.exe ke folder Startup Windows (autorun).
::  Taruh file .bat ini SATU FOLDER dengan KeyRemap.exe,
::  lalu double-click.
:: ============================================================

echo.
echo ==========================================================
echo   INSTALL KEYREMAP KE STARTUP (autorun tiap boot)
echo ==========================================================
echo.

:: Folder tempat .bat ini berada (di situ juga KeyRemap.exe seharusnya ada)
set "HERE=%~dp0"
set "EXE=%HERE%KeyRemap.exe"
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: 1. Pastikan KeyRemap.exe ada di folder yang sama
if not exist "%EXE%" (
  echo [ERROR] KeyRemap.exe tidak ditemukan di folder ini:
  echo     %HERE%
  echo.
  echo Pastikan install-autostart.bat dan KeyRemap.exe berada
  echo di FOLDER YANG SAMA, lalu jalankan ulang.
  echo.
  pause
  exit /b 1
)

:: 2. Pastikan folder Startup ada (buat kalau belum ada)
if not exist "%STARTUP%" (
  echo [INFO] Folder Startup belum ada. Membuat folder...
  mkdir "%STARTUP%"
)

:: 3. Copy KeyRemap.exe ke Startup
echo Menyalin KeyRemap.exe ke folder Startup...
copy /y "%EXE%" "%STARTUP%\KeyRemap.exe" >nul
if errorlevel 1 (
  echo [ERROR] Gagal menyalin ke Startup.
  pause
  exit /b 1
)

:: 4. Jalankan sekarang juga biar langsung aktif tanpa perlu restart
echo Menjalankan KeyRemap sekarang...
start "" "%STARTUP%\KeyRemap.exe"

echo.
echo ==========================================================
echo   SELESAI!
echo ==========================================================
echo   KeyRemap sudah terpasang di Startup dan sedang berjalan.
echo   Ikon hijau 'H' akan muncul di system tray.
echo.
echo   Mulai sekarang, remap otomatis aktif tiap Windows menyala.
echo.
echo   Untuk uninstall:
echo     1. Hapus: %STARTUP%\KeyRemap.exe
echo     2. Klik kanan ikon H hijau di tray -^> Exit
echo.
pause
endlocal
