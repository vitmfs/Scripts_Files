@echo off

TITLE GIT READ-ONLY COMMANDS DEMONSTRATION PROGRAM

REM Verify git is available before showing the menu
where git >nul 2>&1
if errorlevel 1 (
    echo Git is not installed or not on your PATH.
    echo Install Git from https://git-scm.com/ and try again.
    pause
    goto :eof
)

:main

    REM PRESENT THE OPTIONS AND STORE THE CHOSEN ONE
    SET "valid_options=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 0"
    echo ********************************************
    echo 1)  GIT VERSION DEMO                       *
    echo 2)  GIT STATUS DEMO                        *
    echo 3)  GIT CONFIG USER.NAME DEMO              *
    echo 4)  GIT CONFIG USER.EMAIL DEMO             *
    echo 5)  GIT CONFIG --LIST DEMO                 *
    echo 6)  GIT LOG DEMO                           *
    echo 7)  GIT BRANCH DEMO                        *
    echo 8)  GIT BRANCH -A DEMO                     *
    echo 9)  GIT REMOTE -V DEMO                     *
    echo 10) GIT DIFF DEMO                          *
    echo 11) GIT DIFF --STAGED DEMO                 *
    echo 12) GIT SHOW HEAD DEMO                     *
    echo 13) GIT TAG -L DEMO                        *
    echo 14) GIT REV-PARSE HEAD DEMO                *
    echo 15) GIT HELP DEMO                          *
    echo 16) GIT HELP STATUS DEMO                   *
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

    REM GIT VERSION ################################
    if "%input%" equ "1" (
        CLS
        TITLE GIT VERSION DEMO
        ECHO GIT VERSION HELP:
        git --version
        ECHO .
        ECHO WHEN YOU TYPE "git --version" AND PRESS ENTER YOU GET:
        git --version
        goto :main
    )
    :: #############################################

    REM GIT STATUS #################################
    if "%input%" equ "2" (
        CLS
        TITLE GIT STATUS DEMO
        ECHO GIT STATUS HELP:
        git help status
        ECHO .
        ECHO WHEN YOU TYPE "git status" AND PRESS ENTER YOU GET:
        git status
        goto :main
    )
    :: #############################################

    REM GIT CONFIG USER.NAME #######################
    if "%input%" equ "3" (
        CLS
        TITLE GIT CONFIG USER.NAME DEMO
        ECHO GIT CONFIG USER.NAME HELP:
        git help config
        ECHO .
        ECHO WHEN YOU TYPE "git config user.name" AND PRESS ENTER YOU GET:
        git config user.name
        goto :main
    )
    :: #############################################

    REM GIT CONFIG USER.EMAIL ######################
    if "%input%" equ "4" (
        CLS
        TITLE GIT CONFIG USER.EMAIL DEMO
        ECHO GIT CONFIG USER.EMAIL HELP:
        git help config
        ECHO .
        ECHO WHEN YOU TYPE "git config user.email" AND PRESS ENTER YOU GET:
        git config user.email
        goto :main
    )
    :: #############################################

    REM GIT CONFIG --LIST ##########################
    if "%input%" equ "5" (
        CLS
        TITLE GIT CONFIG --LIST DEMO
        ECHO GIT CONFIG --LIST HELP:
        git help config
        ECHO .
        ECHO WHEN YOU TYPE "git config --list" AND PRESS ENTER YOU GET:
        git config --list
        goto :main
    )
    :: #############################################

    REM GIT LOG ####################################
    if "%input%" equ "6" (
        CLS
        TITLE GIT LOG DEMO
        ECHO GIT LOG HELP:
        git help log
        ECHO .
        ECHO WHEN YOU TYPE "git log --oneline -10" AND PRESS ENTER YOU GET:
        git log --oneline -10
        goto :main
    )
    :: #############################################

    REM GIT BRANCH #################################
    if "%input%" equ "7" (
        CLS
        TITLE GIT BRANCH DEMO
        ECHO GIT BRANCH HELP:
        git help branch
        ECHO .
        ECHO WHEN YOU TYPE "git branch" AND PRESS ENTER YOU GET:
        git branch
        goto :main
    )
    :: #############################################

    REM GIT BRANCH -A ##############################
    if "%input%" equ "8" (
        CLS
        TITLE GIT BRANCH -A DEMO
        ECHO GIT BRANCH -A HELP:
        git help branch
        ECHO .
        ECHO WHEN YOU TYPE "git branch -a" AND PRESS ENTER YOU GET:
        git branch -a
        goto :main
    )
    :: #############################################

    REM GIT REMOTE -V ##############################
    if "%input%" equ "9" (
        CLS
        TITLE GIT REMOTE -V DEMO
        ECHO GIT REMOTE -V HELP:
        git help remote
        ECHO .
        ECHO WHEN YOU TYPE "git remote -v" AND PRESS ENTER YOU GET:
        git remote -v
        goto :main
    )
    :: #############################################

    REM GIT DIFF ###################################
    if "%input%" equ "10" (
        CLS
        TITLE GIT DIFF DEMO
        ECHO GIT DIFF HELP:
        git help diff
        ECHO .
        ECHO WHEN YOU TYPE "git diff" AND PRESS ENTER YOU GET:
        git diff
        goto :main
    )
    :: #############################################

    REM GIT DIFF --STAGED ##########################
    if "%input%" equ "11" (
        CLS
        TITLE GIT DIFF --STAGED DEMO
        ECHO GIT DIFF --STAGED HELP:
        git help diff
        ECHO .
        ECHO WHEN YOU TYPE "git diff --staged" AND PRESS ENTER YOU GET:
        git diff --staged
        goto :main
    )
    :: #############################################

    REM GIT SHOW HEAD ##############################
    if "%input%" equ "12" (
        CLS
        TITLE GIT SHOW HEAD DEMO
        ECHO GIT SHOW HELP:
        git help show
        ECHO .
        ECHO WHEN YOU TYPE "git show HEAD --stat" AND PRESS ENTER YOU GET:
        git show HEAD --stat
        goto :main
    )
    :: #############################################

    REM GIT TAG -L #################################
    if "%input%" equ "13" (
        CLS
        TITLE GIT TAG -L DEMO
        ECHO GIT TAG HELP:
        git help tag
        ECHO .
        ECHO WHEN YOU TYPE "git tag -l" AND PRESS ENTER YOU GET:
        git tag -l
        goto :main
    )
    :: #############################################

    REM GIT REV-PARSE HEAD #########################
    if "%input%" equ "14" (
        CLS
        TITLE GIT REV-PARSE HEAD DEMO
        ECHO GIT REV-PARSE HELP:
        git help rev-parse
        ECHO .
        ECHO WHEN YOU TYPE "git rev-parse HEAD" AND PRESS ENTER YOU GET:
        git rev-parse HEAD
        goto :main
    )
    :: #############################################

    REM GIT HELP ###################################
    if "%input%" equ "15" (
        CLS
        TITLE GIT HELP DEMO
        ECHO GIT HELP:
        git help
        goto :main
    )
    :: #############################################

    REM GIT HELP STATUS ############################
    if "%input%" equ "16" (
        CLS
        TITLE GIT HELP STATUS DEMO
        ECHO GIT HELP STATUS:
        git help status
        goto :main
    )
    :: #############################################

    if "%input%" equ "0" (
        ECHO EXITING GIT COMMANDS DEMO!
        PAUSE
        CLS
        goto :eof
    )

    REM Perform actions based on input
    echo You entered %input%.

    REM Continue the loop
    goto :main