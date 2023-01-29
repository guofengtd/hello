:: global variables
set branch_name=%1
set project_dir=%~dp0
set upload_dir=\\192.168.40.18\OCloudwareShare\version\ocloud_rc\%branch_name%\orc_server\
set pack_dir=%project_dir%pack\
set pack=%1%

:: init environment
:init
	@echo off
	cd /d %project_dir%

:update_build_time
echo "upload_file"

:build_project
qmake.exe hello.pro -spec win32-g++


:pack_project
echo "upload_file"

:upload_file
echo "upload_file"

goto :eof

:: call main function
call :main %branch_name%

:: main function of this script
:main
    call :init
    call :update_build_time
    call :build_project
    call :pack_project
    call :upload_file %branch_name%
goto :eof
