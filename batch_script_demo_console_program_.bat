@echo off

TITLE BATCH LANGUAGE DEMONSTRATION PROGRAM

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    echo *******************************************
    echo 1) SYSTEMINFO DEMO                        *
    echo 2) DIR DEMO                               *
    echo 3) ATTRIB DEMO                            *
    echo 4) DATE DEMO                              *
    echo 5) TIME DEMO                              *
    echo 6) COLOR DEMO                             *
    echo 7) VER DEMO                               *
    echo 8) ASSOC DEMO                             *
    echo 9) PATH DEMO                              *
    echo 10) VOL DEMO                              *
    echo 11) DRIVERQUERY DEMO                      *

    echo Enter a number (0 to exit):
    
    set /p input=
    :: #############################################

    REM SYSTEMINFO #################################
    if "%input%" equ "1" (
        CLS
        TITLE SYSTEMINFO DEMO
        ECHO SYSTEMINFO HELP:
        SYSTEMINFO /?
        ECHO .
        ECHO WHEN YOU TYPE SYSTEMINFO AND PRESS ENTER YOU GET:
        SYSTEMINFO
        goto :main
    )
    :: #############################################

    REM DIR ########################################
    if "%input%" equ "2" (
        CLS
        TITLE DIR DEMO
        DIR /?
        ECHO .
        ECHO WHEN YOU TYPE DIR AND PRESS ENTER YOU GET:
        DIR
        goto :main
    )
    :: #############################################

    REM ATTRIB #####################################
    if "%input%" equ "3" (
        CLS
        TITLE ATTRIB DEMO
        ATTRIB /?
        ECHO .
        ECHO WHEN YOU TYPE ATTRIB AND PRESS ENTER YOU GET:
        ATTRIB
        
        goto :main
    )
    :: ###########################################

    REM DATE #####################################
    if "%input%" equ "4" (
        CLS
        TITLE DATE DEMO
        DATE /?
        ECHO %DATE%

        goto :main
    )
    :: ############################################

    REM TIME ######################################
    if "%input%" equ "5" (
        CLS
        TITLE TIME DEMO
        TIME /?
        ECHO %TIME%

        goto :main
    )
    :: ############################################

    REM COLOR #####################################
    if "%input%" equ "6" (
        CLS
        TITLE COLOR 00 TO COLOR FF FOR EXAMPLE COLOR 0A
        COLOR /?
        COLOR 0A

        goto :main
    )
    :: ############################################

    REM VER ######################################
    if "%input%" equ "7" (
        CLS
        TITLE VER DEMO
        VER /?
        ECHO .
        ECHO WHEN YOU TYPE VER AND PRESS ENTER YOU GET:
        VER

        goto :main
    )
    :: ############################################

    REM ASSOC #####################################
    if "%input%" equ "8" (
        CLS
        TITLE ASSOC DEMO
        ASSOC /?
        ECHO .
        ECHO WHEN YOU TYPE ASSOC AND PRESS ENTER YOU GET:
        ASSOC

        goto :main
    )
    :: ############################################

    REM PATH ######################################
    if "%input%" equ "9" (
        CLS
        TITLE PATH DEMO
        PATH /?
        ECHO .
        ECHO WHEN YOU TYPE PATH AND PRESS ENTER YOU GET:
        PATH
        ECHO PATH
        
        goto :main
    )
    :: ############################################

    REM VOL #######################################
    if "%input%" equ "10" (
        CLS
        TITLE VOL DEMO
        VOL /?
        ECHO .
        ECHO WHEN YOU TYPE VOL AND PRESS ENTER YOU GET:
        VOL

        goto :main
    )
    :: ############################################

    REM DRIVERQUERY ###############################
    if "%input%" equ "11" (
        CLS
        TITLE DRIVERQUERY DEMO
        DRIVERQUERY /?
        ECHO .
        ECHO WHEN YOU TYPE DRIVERQUERY AND PRESS ENTER YOU GET:
        DRIVERQUERY
        ECHO DRIVERQUERY
        
        goto :main
    )
    :: ############################################

    if "%input%" equ "12" (
        CLS
        echo Do Something!
        goto :main
    )

        if "%input%" equ "0" (
        echo Thank you, have a nice day!
        pause
        goto :eof
    )
    

    REM Perform actions based on input
    echo You entered %input%.

    REM Continue the loop
    goto :main



    @REM setlocal enabledelayedexpansion

    @REM     set count=1
    @REM     set window_title=My Custom Title

    @REM     :loop
    @REM         echo !count!
    @REM         TITLE !count!
    @REM         set /a count+=1
    @REM         timeout /t 1 >nul
    @REM         if !count! gtr 10 (
                
                
    @REM             goto endloop
    @REM         )
    @REM         goto loop

    @REM     :endloop
    @REM     echo Exiting loop.
    @REM     endlocal


