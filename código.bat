@echo off
title JOGO DO ADM
color a

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

if "%ADM%"=="calmo" (
    goto fim
) else (
    goto loop
)

:fim
cls
echo O ADM esta calmo
pause
exit
