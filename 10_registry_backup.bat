@echo off

rem Define the location to save the backup file
set "backup_file=registry_backup.reg"

rem Backup the entire registry
reg export HKLM\Software %backup_file% /y
reg export HKCU\Software %backup_file% /y

echo The registry has been successfully backed up to %backup_file%.
