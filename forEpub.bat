@echo off
cls
title epub��rarת��
:main
echo.
echo    +-----------------------+
echo    +     epub��rarת��     +
echo    +-----------------------+
echo.
echo    1. ".epub" to ".rar"
echo.
echo    2. ".rar" to ".epub"
echo.
echo    0. �˳�
echo.
echo.
set choice=
set /p choice= ��ѡ��
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto toRar
if /i "%choice%"=="2" goto toEpub
if /i "%choice%"=="0" goto over

:toRar
ren *.epub *.rar
echo 1
pause
cls
goto main

:toEpub
ren *.rar *.epub
echo 2
pause
cls
goto main

:over
exit