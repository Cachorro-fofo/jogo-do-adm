@echo off
title JOGO DO ADM
color a

set /a COIN=0

:loop
set /a random_number=%random% %% 100

echo tentando acalmar o ADM...
timeout /t 5 >nul
cls

if %random_number%==0 (
    set ADM=calmo
) else (
    set ADM=não calmo
)

if "%ADM%"=="calmo" goto fim

echo voce nao conseguiu acalmar o ADM...
timeout /t 3 >nul

echo.
echo mas conseguiu um btc.

set /a COIN=%COIN%+1
timeout /t 3 >nul

cls
echo btc = %COIN%
pause

goto loop

:fim
cls
echo O ADM esta calmo
pause
exit
