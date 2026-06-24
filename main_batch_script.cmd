@echo off

TITLE MAIN CHOICES FOR SCRIPTING DEMOS

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    SET "valid_options=1 2 0"
    echo *******************************************
    echo 1) COMMANDS DEMO                          *
    echo 2) GIT READ-ONLY COMMANDS DEMO            *
    echo 0) EXIT PROGRAM                           *
    
    set /p input= "Enter a number (0 to exit):"

    :: Loop through valid options and re-prompt if no match
    :check_valid_option
    set "found="
    for %%n in (%valid_options%) do (
        if "%%n"=="%input%" set "found=1"
    )
    if not defined found (
        echo Invalid option. Please enter one of the options above.
        set /p input="ENTER A NUMBER (0 to exit): "
        goto :check_valid_option
    )
    :: #############################################

    REM SYSTEMINFO #################################
    if "%input%" equ "1" (
        CLS
        TITLE COMMANDS DEMO
        ECHO CALLING COMMANDS DEMO:
        CALL ".\Batch_Scripts\batch_script_demo_console_program.bat"
        goto :main
    )
    :: #############################################

    REM GIT READ-ONLY COMMANDS #####################
    if "%input%" equ "2" (
        CLS
        TITLE GIT READ-ONLY COMMANDS DEMO
        ECHO CALLING GIT READ-ONLY COMMANDS DEMO:
        CALL ".\Batch_Scripts\batch_script_demo_git_commands.bat"
        goto :main
    )
    :: #############################################

  if "%input%" equ "0" (
        echo Thank you, have a nice day!
        pause
        goto :eof
    )