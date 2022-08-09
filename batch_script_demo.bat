:: Explain what this script does
:: Deletes All files in the Current Directory With Prompts and Warnings
::(Hidden, System, and Read-Only Files are Not Affected)
:: @ECHO OFF
:: DEL . DR


CLS
@ECHO OFF
ECHO BATCH SCRIPT DEMO PROGRAM START!!!
ECHO.

ECHO %1 
ECHO %2 
ECHO %3


REM This is a comment
:: This is another comment

TITLE CHANGED BY THE BATCH PROGRAM
SYSTEMINFO > result_of_system_info.txt
DIR > result_of_dir.txt
DIR /B
:: DIR /?
ATTRIB > result_of_attrib.txt
ECHO %DATE%
ECHO %TIME%



ECHO THIS IS A EXAMPLE &ECHO OF A LINE BREAK!

ECHO 0 = Black
ECHO 1 = Blue
ECHO 2 = Green
ECHO 3 = Aqua
ECHO 4 = Red
ECHO 5 = Purple
ECHO 6 = Yellow
ECHO 7 = White
ECHO 8 = Gray
ECHO 9 = Light Blue
ECHO A = Light Green
ECHO B = Light Aqua
ECHO C = Light Red
ECHO D = Light Purple
ECHO E = Light Yellow
ECHO F = Bright White

ECHO YOU CAN CHANGE COLORS OF BACKGROUND AND TEXT WITH
ECHO COLOR XY
ECHO WHERE X AND Y ARE ONE OF THE VALUES ABOVE
ECHO COLOR 0A WILL CHANGE THE BACKGROUND COLOR TO BLACK
ECHO AND THE TEXT COLOR TO GREEN

COLOR 0A

REM save text in a variable
SET myString=Hello
ECHO %myString%

REM save number in a variable
SET /a myNumber=5
ECHO %myNumber%


VER
ASSOC > result_of_assoc.txt
::ASSOC | FIND ".ext"
:: CD
:: COPY
:: MD
:: MOVE
:: PROMPT
:: RD (REMOVE DIRECTORY IF EMPTY)
:: REN (RENAME)
:: 
PATH > result_of_path.txt
:: START other_script.cmd
:: TYPE
VOL
::  CHKDSK
:: CHOICE
:: 
:: CMD
:: COMP bach_script_demo.bat other_script.cmd
:: CONVERT
:: 
DRIVERQUERY > result_of_driver_query.txt
:: EXPAND
:: 
:: FIND
:: FORMAT
:: HELP
::
IPCONFIG > result_of_ipconfig.txt
:: LABEL
:: MORE
:: NET
PING /? > result_of_ping_help.txt
:: SHUTDOWN
SORT /? > result_of_sort_help.txt
:: SUBST
TASKLIST > result_of_tasklist.txt
:: TASKKILL
:: XCOPY
:: 
TREE /? > result_of_tree_help.txt
:: DIFFERENCES BETWEEN TWO FILES
FC batch_script_demo.bat other_script.cmd > result_of_fc.txt
:: DISKPART
:: 



ECHO Path of Application Data is %APPDATA%
ECHO Path of Common Command Files is %CommonProgramFiles%
ECHO Name of Computer is %COMPUTERNAME%
ECHO Path of Program Files is %ProgramFiles%
ECHO Path of Program Data is %ProgramData%
ECHO Random Number: %RANDOM%
ECHO Path of System Root is %SYSTEMROOT%
ECHO Path of Temporary Folder is %TEMP%
ECHO Path of Temporary Folder is %TMP%
ECHO User Name is %USERNAME%
ECHO Path of User Profile Folder is %USERPROFILE%
ECHO Path of Windows Directory is %WINDIR%
ECHO Path of Java Home is %JAVA_HOME%



SET /p fn= First Number: 
SET /p sn= Second Number:

IF %fn% GTR %sn% ECHO %fn% IS GREATER THAN %sn%
IF %fn% GEQ %sn% ECHO %fn% IS GREATER OR EQUAL TO %sn%

IF %fn% LSS %sn% ECHO %fn% IS LOWER THAN %sn%
IF %fn% LEQ %sn% ECHO %fn% IS LOWER OR EQUAL TO %sn%

IF %fn% EQU %sn% ECHO %fn% IS EQUAL T0 %sn%
IF %fn% NEQ %sn% ECHO %fn% IS NOT EQUAL T0 %sn%

:: AND OR NOT
:: += -= /= *= %=
:: & | ^



SET /a sum=%fn%+%sn%
ECHO Sum is %sum%

SET /a subtraction=%fn%-%sn%
ECHO Subtraction is %subtraction%

SET /a multiplication=%fn%*%sn%
ECHO Multiplication is %multiplication%

SET /a division=%fn%/%sn%
ECHO Division is %division%

SET /a modulus=%fn%%%sn%
ECHO Modulus is %modulus%

SET globalvar = 5
SETLOCAL
SET var = 13145
SET /A var = %var% + 5
ECHO %var%
ECHO %globalvar%
ENDLOCAL


SET list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))

ECHO %list%

SET list[0]=100
echo %list[0]%

@echo off 
setlocal enabledelayedexpansion 
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays 
set topic[3]=Decision making 
set topic[4]=Time and date 
set topic[5]=Operators 

for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)

:: STRUCTURES
@echo off 
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
FOR /L %%i IN (0 1 2) DO  (
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
)

SET /p myInputedVar="Enter your name: "
ECHO %myInputedVar%




NET STATISTICS

other_script.cmd

TIMEOUT /T 5 /NOBREAK
TIMEOUT /T 5 /NOBREAK > NULL

ECHO.
ECHO BATCH SCRIPT DEMO PROGRAM END!!!
PAUSE
CLS

::EXIT
