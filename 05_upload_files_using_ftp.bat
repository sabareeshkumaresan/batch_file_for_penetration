@echo off

set FTP_SERVER=ftp.example.com
set FTP_USERNAME=username
set FTP_PASSWORD=password
set SOURCE_FILE=file.zip
set DEST_FILE=file.zip

ftp -s:%~dp0upload.txt %FTP_SERVER%

pause
