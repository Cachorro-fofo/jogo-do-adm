@echo off
title JOGO DO ADM
color a

set /a COIN=0

:loop
set /a random_number=%random% %% 100

echo tentando acalmar o ADM...
timeout /t 1 >nul
cls

if %random_number%==0 (
    set ADM=calmo
) else (
    set ADM=não calmo
)

if "%ADM%"=="calmo" goto fim

echo voce não conseguiu acalmar o ADM...
timeout /t 1 >nul

echo mas conseguiu um btc.
set /a COIN=%COIN%+1

echo btc's = %COIN%
pause

goto loop

:fim
cls
echo O ADM esta calmo
pause
exit
