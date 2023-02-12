@echo off

set URL=https://example.com/file.exe
set DEST=file.exe

curl -o %DEST% %URL%

if %errorlevel% == 0 (
  start %DEST%
) else (
  echo There was a problem downloading the file.
)

pause
