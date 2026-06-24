@echo off

TITLE BATCH LANGUAGE DEMONSTRATION PROGRAM

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    SET "valid_options=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 0"
    echo *******************************************
    echo 1)  SYSTEMINFO DEMO                        *
    echo 2)  DIR DEMO                               *
    echo 3)  ATTRIB DEMO                            *
    echo 4)  DATE DEMO                              *
    echo 5)  TIME DEMO                              *
    echo 6)  COLOR DEMO                             *
    echo 7)  VER DEMO                               *
    echo 8)  ASSOC DEMO                             *
    echo 9)  PATH DEMO                              *
    echo 10) VOL DEMO                               *
    echo 11) DRIVERQUERY DEMO                       *
    echo 12) WHOAMI DEMO                            *
    echo 13) TREE DEMO                              *
    echo 14) SET DEMO                               *
    echo 15) TASKLIST DEMO                          *
    echo 16) IPCONFIG DEMO                          *
    echo 0)  EXIT                                   *

    set /p input="ENTER A NUMBER (0 to exit): "

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

    REM WHOAMI ####################################
    if "%input%" equ "12" (
        CLS
        TITLE WHOAMI DEMO
        WHOAMI /?
        ECHO .
        ECHO WHEN YOU TYPE WHOAMI AND PRESS ENTER YOU GET:
        WHOAMI

        goto :main
    )
    :: ############################################

    REM TREE ######################################
    if "%input%" equ "13" (
        CLS
        TITLE TREE DEMO
        TREE /?
        ECHO .
        ECHO WHEN YOU TYPE TREE AND PRESS ENTER YOU GET:
        TREE

        goto :main
    )
    :: ############################################

    REM SET #######################################
    if "%input%" equ "14" (
        CLS
        TITLE SET DEMO
        SET /?
        ECHO .
        ECHO WHEN YOU TYPE SET AND PRESS ENTER YOU GET:
        SET

        goto :main
    )
    :: ############################################

    REM TASKLIST ##################################
    if "%input%" equ "15" (
        CLS
        TITLE TASKLIST DEMO
        TASKLIST /?
        ECHO .
        ECHO WHEN YOU TYPE TASKLIST AND PRESS ENTER YOU GET:
        TASKLIST

        goto :main
    )
    :: ############################################

    REM IPCONFIG ##################################
    if "%input%" equ "16" (
        CLS
        TITLE IPCONFIG DEMO
        IPCONFIG /?
        ECHO .
        ECHO WHEN YOU TYPE IPCONFIG AND PRESS ENTER YOU GET:
        IPCONFIG

        goto :main
    )
    :: ############################################

    if "%input%" equ "0" (
        ECHO EXITING COMMANDS DEMO!
        PAUSE
        CLS
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


