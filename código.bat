@echo off
title JOGO DO ADM

set /a COIN=0

color 5
echo iniciando sistema.
timeout /t 2 >nul
color 7
echo iniciando sistema..
timeout /t 2 >nul
color 3
echo iniciando sistema...
timeout /t 2 >nul
color a

cls
echo sistema iniciado
pause

:loop
set /a random_number=%random% %% 100
:: Aleatório entre o e 99

cls
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
echo.
pause

goto loop

:fim
cls
echo depois de muito tempo o ADM esta calmo
timeout /t 3 >nul

echo.
echo voce terminou com %COIN% btcs
pause
exit
