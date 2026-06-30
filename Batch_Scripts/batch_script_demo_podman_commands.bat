@echo off

TITLE PODMAN READ-ONLY COMMANDS DEMONSTRATION PROGRAM

REM Verify podman is available before showing the menu
where podman >nul 2>&1
if errorlevel 1 (
    echo Podman is not installed or not on your PATH.
    echo Install Podman from https://podman.io/docs/installation and try again.
    pause
    goto :eof
)

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    SET "valid_options=1 2 3 4 5 6 7 8 9 10 11 12 13 14 0"
    echo ********************************************
    echo 1)  PODMAN HELP DEMO                       *
    echo 2)  PODMAN VERSION DEMO                    *
    echo 3)  PODMAN INFO DEMO                       *
    echo 4)  PODMAN PS DEMO                         *
    echo 5)  PODMAN IMAGES DEMO                     *
    echo 6)  PODMAN NETWORK LS DEMO                 *
    echo 7)  PODMAN VOLUME LS DEMO                  *
    echo 8)  PODMAN SYSTEM DF DEMO                  *
    echo 9)  PODMAN SYSTEM CONNECTION LS DEMO       *
    echo 10) PODMAN STATS DEMO                      *
    echo 11) PODMAN COMPOSE VERSION DEMO            *
    echo 12) PODMAN COMPOSE PS DEMO                 *
    echo 13) PODMAN MACHINE LS DEMO                 *
    echo 14) PODMAN RUN DEMO                        *
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

    REM PODMAN HELP #############################
    if "%input%" equ "1" (
        CLS
        TITLE PODMAN HELP DEMO
        ECHO WHEN YOU TYPE "podman --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman --help
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN VERSION ###############################
    if "%input%" equ "2" (
        CLS
        TITLE PODMAN VERSION DEMO
        ECHO WHEN YOU TYPE "podman version help" AND PRESS ENTER YOU GET:
        ECHO.
        podman version help
        ECHO.
        ECHO WHEN YOU TYPE "podman --version" AND PRESS ENTER YOU GET:
        ECHO.
        podman --version
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN INFO ##################################
    if "%input%" equ "3" (
        CLS
        TITLE PODMAN INFO DEMO
        ECHO WHEN YOU TYPE "podman info help" AND PRESS ENTER YOU GET:
        ECHO.
        podman info help
        ECHO.
        ECHO WHEN YOU TYPE "podman info" AND PRESS ENTER YOU GET:
        ECHO.
        podman info
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN PS ####################################
    if "%input%" equ "4" (
        CLS
        TITLE PODMAN PS DEMO
        ECHO WHEN YOU TYPE "podman ps --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman ps --help
        ECHO.
        ECHO WHEN YOU TYPE "podman ps" AND PRESS ENTER YOU GET:
        ECHO.
        podman ps
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN IMAGES ################################
    if "%input%" equ "5" (
        CLS
        TITLE PODMAN IMAGES DEMO
        ECHO WHEN YOU TYPE "podman images --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman images --help
        ECHO.
        ECHO WHEN YOU TYPE "podman images" AND PRESS ENTER YOU GET:
        ECHO.
        podman images
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN NETWORK LS ############################
    if "%input%" equ "6" (
        CLS
        TITLE PODMAN NETWORK LS DEMO
        ECHO WHEN YOU TYPE "podman network ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman network ls --help
        ECHO.
        ECHO WHEN YOU TYPE "podman network ls" AND PRESS ENTER YOU GET:
        ECHO.
        podman network ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN VOLUME LS #############################
    if "%input%" equ "7" (
        CLS
        TITLE PODMAN VOLUME LS DEMO
        ECHO WHEN YOU TYPE "podman volume ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman volume ls --help
        ECHO.
        ECHO WHEN YOU TYPE "podman volume ls" AND PRESS ENTER YOU GET:
        ECHO.
        podman volume ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN SYSTEM DF #############################
    if "%input%" equ "8" (
        CLS
        TITLE PODMAN SYSTEM DF DEMO
        ECHO WHEN YOU TYPE "podman system df --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman system df --help
        ECHO.
        ECHO WHEN YOU TYPE "podman system df" AND PRESS ENTER YOU GET:
        ECHO.
        podman system df
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN SYSTEM CONNECTION LS ################
    if "%input%" equ "9" (
        CLS
        TITLE PODMAN SYSTEM CONNECTION LS DEMO
        ECHO WHEN YOU TYPE "podman system connection ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman system connection ls --help
        ECHO.
        ECHO WHEN YOU TYPE "podman system connection ls" AND PRESS ENTER YOU GET:
        ECHO.
        podman system connection ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN STATS ###############################
    if "%input%" equ "10" (
        CLS
        TITLE PODMAN STATS DEMO
        ECHO WHEN YOU TYPE "podman stats --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman stats --help
        ECHO.
        ECHO WHEN YOU TYPE "podman stats --no-stream" AND PRESS ENTER YOU GET:
        ECHO.
        podman stats --no-stream
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN COMPOSE VERSION #######################
    if "%input%" equ "11" (
        CLS
        TITLE PODMAN COMPOSE VERSION DEMO
        ECHO WHEN YOU TYPE "podman compose version --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman compose version --help
        ECHO.
        ECHO WHEN YOU TYPE "podman compose version" AND PRESS ENTER YOU GET:
        ECHO.
        podman compose version
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN COMPOSE PS ############################
    if "%input%" equ "12" (
        CLS
        TITLE PODMAN COMPOSE PS DEMO
        ECHO WHEN YOU TYPE "podman compose ps --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman compose ps --help
        ECHO.
        ECHO WHEN YOU TYPE "podman compose ps" AND PRESS ENTER YOU GET:
        ECHO.
        podman compose ps
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN MACHINE LS ############################
    if "%input%" equ "13" (
        CLS
        TITLE PODMAN MACHINE LS DEMO
        ECHO WHEN YOU TYPE "podman machine ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        podman machine ls --help
        ECHO.
        ECHO WHEN YOU TYPE "podman machine ls" AND PRESS ENTER YOU GET:
        ECHO.
        podman machine ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM PODMAN RUN #################################
    if "%input%" equ "14" (
        CLS
        TITLE PODMAN RUN DEMO
        ECHO WHEN YOU TYPE "podman run --help" OR "podman help run" YOU GET:
        ECHO.
        podman run --help
        ECHO.

        goto :main
    )
    :: #############################################

    if "%input%" equ "0" (
        ECHO EXITING PODMAN COMMANDS DEMO!
        PAUSE
        CLS
        goto :eof
    )

    REM Perform actions based on input
    echo You entered %input%.

    REM Continue the loop
    goto :main