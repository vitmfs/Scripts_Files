CLS
@ECHO OFF
ECHO BATCH SCRIPT DEMO PROGRAM START!!!
ECHO.


REM This is a comment
:: This is another comment

TITLE CHANGED BY THE BATCH PROGRAM

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

SET /p fn= First Number: 
SET /p sn= Second Number:

IF %fn% GTR %sn% ECHO %fn% IS GREATER THAN %sn%
IF %fn% LSS %sn% ECHO %fn% IS LOWER THAN %sn%
IF %fn% EQU %sn% ECHO %fn% IS EQUAL T0 %sn%

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




SET /p myInputedVar="Enter your name: "
ECHO %myInputedVar%




NET STATISTICS


ECHO.
ECHO BATCH SCRIPT DEMO PROGRAM END!!!
PAUSE
CLS