@echo off

set FTP_SERVER=ftp.example.com
set FTP_USERNAME=username
set FTP_PASSWORD=password
set SOURCE_FOLDER=C:\path\to\folder
set DEST_FOLDER=folder

for /f "delims=" %%f in ('dir /b /a-d "%SOURCE_FOLDER%\*"') do (
  echo put "%SOURCE_FOLDER%\%%f" "%DEST_FOLDER%/%%f" >> upload.txt
)

echo quit >> upload.txt

ftp -s:%~dp0upload.txt %FTP_SERVER%

pause
