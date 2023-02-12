@echo off

rem Define the location of the backup file
set "backup_file=registry_backup.reg"

rem Restore the registry
reg import %backup_file%

echo The registry has been successfully restored from %backup_file%.
