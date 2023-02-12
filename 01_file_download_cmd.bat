@echo off

set URL=https://example.com/file.zip
set DEST=file.zip

curl -o %DEST% %URL%

if %errorlevel% == 0 (
  echo File successfully downloaded.
) else (
  echo There was a problem downloading the file.
)

pause
