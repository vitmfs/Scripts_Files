@echo off

TITLE MAIN CHOICES FOR SCRIPTING DEMOS

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    echo *******************************************
    echo 1) COMMANDS DEMO                          *
    echo 0) EXIT PROGRAM                           *


    echo Enter a number (0 to exit):
    
    set /p input=
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

  if "%input%" equ "0" (
        echo Thank you, have a nice day!
        pause
        goto :eof
    )