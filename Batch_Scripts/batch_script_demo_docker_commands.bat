@echo off

TITLE DOCKER READ-ONLY COMMANDS DEMONSTRATION PROGRAM

REM Verify docker is available before showing the menu
where docker >nul 2>&1
if errorlevel 1 (
    echo Docker is not installed or not on your PATH.
    echo Install Docker Desktop from https://www.docker.com/products/docker-desktop/ and try again.
    pause
    goto :eof
)

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    SET "valid_options=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 0"
    echo ********************************************
    echo 1)  DOCKER HELP DEMO                       *
    echo 2)  DOCKER VERSION DEMO                    *
    echo 3)  DOCKER INFO DEMO                       *
    echo 4)  DOCKER PS DEMO                         *
    echo 5)  DOCKER IMAGES DEMO                     *
    echo 6)  DOCKER NETWORK LS DEMO                 *
    echo 7)  DOCKER VOLUME LS DEMO                  *
    echo 8)  DOCKER SYSTEM DF DEMO                  *
    echo 10) DOCKER CONTEXT LS DEMO                 *
    echo 11) DOCKER STATS --NO-STREAM DEMO          *
    echo 12) DOCKER COMPOSE VERSION DEMO            *
    echo 13) DOCKER COMPOSE PS DEMO                 *
    echo 14) DOCKER PLUGIN LS DEMO                  *
    echo 15) DOCKER HELP DEMO                       *
    echo 16) DOCKER HELP RUN DEMO                   *
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

    REM DOCKER HELP #############################
    if "%input%" equ "1" (
        CLS
        TITLE DOCKER HELP DEMO
        ECHO WHEN YOU TYPE "docker --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker --help
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER VERSION ###############################
    if "%input%" equ "2" (
        CLS
        TITLE DOCKER VERSION DEMO
        ECHO WHEN YOU TYPE "docker --version help" AND PRESS ENTER YOU GET:
        ECHO.
        docker --version help
        ECHO.
        ECHO WHEN YOU TYPE "docker --version" AND PRESS ENTER YOU GET:
        ECHO.
        docker --version
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER INFO ##################################
    if "%input%" equ "3" (
        CLS
        TITLE DOCKER INFO DEMO
        ECHO WHEN YOU TYPE "docker info help" AND PRESS ENTER YOU GET:
        ECHO.
        docker info help
        ECHO.
        ECHO WHEN YOU TYPE "docker info" AND PRESS ENTER YOU GET:
        ECHO.
        docker info
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER PS ####################################
    if "%input%" equ "4" (
        CLS
        TITLE DOCKER PS DEMO
        ECHO WHEN YOU TYPE "docker ps --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker ps --help
        ECHO.
        ECHO WHEN YOU TYPE "docker ps" AND PRESS ENTER YOU GET:
        ECHO.
        docker ps
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER IMAGES ################################
    if "%input%" equ "5" (
        CLS
        TITLE DOCKER IMAGES DEMO
        ECHO WHEN YOU TYPE "docker images --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker images --help
        ECHO.
        ECHO WHEN YOU TYPE "docker images" AND PRESS ENTER YOU GET:
        ECHO.
        docker images
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER NETWORK LS ############################
    if "%input%" equ "6" (
        CLS
        TITLE DOCKER NETWORK LS DEMO
        ECHO WHEN YOU TYPE "docker network ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker network ls --help
        ECHO .
        ECHO WHEN YOU TYPE "docker network ls" AND PRESS ENTER YOU GET:
        ECHO.
        docker network ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER VOLUME LS #############################
    if "%input%" equ "7" (
        CLS
        TITLE DOCKER VOLUME LS DEMO
        ECHO WHEN YOU TYPE "docker volume ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker volume ls --help
        ECHO.
        ECHO WHEN YOU TYPE "docker volume ls" AND PRESS ENTER YOU GET:
        ECHO.
        docker volume ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER SYSTEM DF #############################
    if "%input%" equ "8" (
        CLS
        TITLE DOCKER SYSTEM DF DEMO
        ECHO WHEN YOU TYPE "docker system df --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker system df --help
        ECHO.
        ECHO WHEN YOU TYPE "docker system df" AND PRESS ENTER YOU GET:
        ECHO.
        docker system df
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER CONTEXT LS ############################
    if "%input%" equ "9" (
        CLS
        TITLE DOCKER CONTEXT LS DEMO
        ECHO WHEN YOU TYPE "docker context ls --help" AND PRESS ENTER YOU GET:
        ECHO.
        docker context ls --help
        ECHO.
        ECHO WHEN YOU TYPE "docker context ls" AND PRESS ENTER YOU GET:
        ECHO.
        docker context ls
        ECHO.

        goto :main
    )
    :: #############################################

    REM DOCKER STATS --NO-STREAM #####################
    if "%input%" equ "11" (
        CLS
        TITLE DOCKER STATS --NO-STREAM DEMO
        ECHO DOCKER STATS HELP:
        docker stats --help
        ECHO .
        ECHO WHEN YOU TYPE "docker stats --no-stream" AND PRESS ENTER YOU GET:
        docker stats --no-stream
        goto :main
    )
    :: #############################################

    REM DOCKER COMPOSE VERSION #######################
    if "%input%" equ "12" (
        CLS
        TITLE DOCKER COMPOSE VERSION DEMO
        ECHO DOCKER COMPOSE VERSION HELP:
        docker compose version --help
        ECHO .
        ECHO WHEN YOU TYPE "docker compose version" AND PRESS ENTER YOU GET:
        docker compose version
        goto :main
    )
    :: #############################################

    REM DOCKER COMPOSE PS ############################
    if "%input%" equ "13" (
        CLS
        TITLE DOCKER COMPOSE PS DEMO
        ECHO DOCKER COMPOSE PS HELP:
        docker compose ps --help
        ECHO .
        ECHO WHEN YOU TYPE "docker compose ps" AND PRESS ENTER YOU GET:
        docker compose ps
        goto :main
    )
    :: #############################################

    REM DOCKER PLUGIN LS #############################
    if "%input%" equ "14" (
        CLS
        TITLE DOCKER PLUGIN LS DEMO
        ECHO DOCKER PLUGIN LS HELP:
        docker plugin ls --help
        ECHO .
        ECHO WHEN YOU TYPE "docker plugin ls" AND PRESS ENTER YOU GET:
        docker plugin ls
        goto :main
    )
    :: #############################################

    REM DOCKER HELP ##################################
    if "%input%" equ "15" (
        CLS
        TITLE DOCKER HELP DEMO
        ECHO DOCKER HELP:
        docker help
        goto :main
    )
    :: #############################################

    REM DOCKER HELP RUN ##############################
    if "%input%" equ "16" (
        CLS
        TITLE DOCKER HELP RUN DEMO
        ECHO DOCKER HELP RUN:
        docker help run
        goto :main
    )
    :: #############################################

    if "%input%" equ "0" (
        ECHO EXITING DOCKER COMMANDS DEMO!
        PAUSE
        CLS
        goto :eof
    )

    REM Perform actions based on input
    echo You entered %input%.

    REM Continue the loop
    goto :main