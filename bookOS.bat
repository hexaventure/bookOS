@echo off
rem bookOS (C) Hexaventure Informática Ltda. 2023-2023
goto bootscreen

:bootscreen
ping localhost -n 4 >nul
cls
echo Hexaventure Informatica Ltda.
ping localhost -n 4 >nul
cls
ping localhost -n 2 >nul
cls
echo Hexaventure Informatica Ltda.
echo.
echo Sistema operacional da maquina host: %os%
echo Sistema operacional da maquina guest: bookOS
ping localhost -n 3 >nul
cls
color b
echo -----------------------------------
echo.
echo            bookOS
echo             v1.0
echo.
echo -----------------------------------
ping localhost -n 4 >nul
cls
color 4
echo bookOS v1.0
echo.
echo Inspirado no BatOS, do Cool Strawberry.
echo.
echo Codenome: nao tem ainda.
ping localhost -n 4 >nul
goto escolherusuario

:escolherusuario
cls
color 07
echo Escolha um usuario.
echo.
echo 1) Administrador
echo 2) %username%
echo 3) SISTEMA
echo.
echo Se vc nao escolher uma opcao valida,
echo o PC faz um beep.
echo.
choice /c 123 >nul
if %errorlevel% equ 1 goto adm
if %errorlevel% equ 2 goto nomedohost
if %errorlevel% equ 3 goto sistema

:adm
cls
echo Logando no usuario: Administrador.
ping localhost -n 3 >nul
goto menu

:nomedohost
cls
echo Logando no usuario: %username%
ping localhost -n 3 >nul
goto menu

:sistema
cls
echo Logando no usuario: SISTEMA
ping localhost -n 6 >nul
cls
color c
echo Um erro ocorreu.
echo Motivo: Acesso negado.
echo.
pause
goto escolherusuario

:menu
cls
echo bookOS - v1.0 beta
echo.
echo Menu de programas.
echo.
echo 1. Player de midia
echo 2. Mudar a cor
echo 3. Relogio
echo 4. Calculadora
echo 5. Desligar
echo 6. Suspender
echo 7. ÿíäÿ²¬
choice /c 1234567 >nul
if %errorlevel% equ 1 goto mediaplayer
if %errorlevel% equ 2 goto colorchanger
if %errorlevel% equ 3 goto clock
if %errorlevel% equ 4 goto calc
if %errorlevel% equ 5 goto desligar
if %errorlevel% equ 6 goto suspender
if %errorlevel% equ 7 goto crashoukkk


:clock
cls
echo %time%
echo.
pause
goto menu

:mediaplayer
cls
echo Digite o local do arquivo:
set /p file=""
start %file% wmplayer.exe
goto menu

:colorchanger
cls
echo Escolhe:
echo 1 = CMD
echo 2 = Ciano em Preto
echo 3 = Verde em Preto (Matrix)
echo 4 = Verde em Branco
echo 5 = Ciano em Branco
echo 6 = Roxo em Preto
echo 7 = Roxo em Branco
echo 8 = Voltar
echo.
choice /c 12345678 >nul
if %errorlevel% equ 1 color 07
if %errorlevel% equ 2 color 0b
if %errorlevel% equ 3 color 0a
if %errorlevel% equ 4 color fa
if %errorlevel% equ 5 color fb
if %errorlevel% equ 6 color 05
if %errorlevel% equ 7 color f5
if %errorlevel% equ 8 goto menu
goto colorchanger

:calc
cls
echo Calculadora de 2 numeros:
echo.
echo 1. Adicao
echo 2. Subtracao
echo 3. Multiplicacao
echo 4. Divisao
echo 5. Voltar
set /p type=
if %type%==1 goto a
if %type%==2 goto b
if %type%==3 goto c
if %type%==4 goto d
if %type%==5 goto menu
:a
cls
echo Digite um numero:
set /p num1=
echo Digite mais um:
set /p num2=
cls
echo %num1%+%num2%?
pause
set /a Answer=%num1%+%num2%
echo %Answer%
pause
goto calc
:b
cls
echo Digite um numero:
set /p num1=
echo Digite mais um:
set /p num2=
cls
echo %num1%-%num2%?
pause
set /a Answer=%num1%-%num2%
echo %Answer%
pause
goto calc
:c
cls
echo Digite um numero:
set /p num1=
echo Digite mais um:
set /p num2=
cls
echo %num1%*%num2%?
pause
set /a Answer=%num1%*%num2%
echo %Answer%
pause
goto calc
:d
cls
echo Digite um numero:
set /p num1=
echo Digite mais um:
set /p num2=
cls
echo %num1%/%num2%?
pause
set /a Answer=%num1%/%num2%
echo %Answer%
pause
goto calc

:desligar
color cf
cls
echo.
echo.
echo Desligar?
choice
if %errorlevel% equ 1 exit
if %errorlevel% equ 2 goto menu

:suspender
color 07
cls
echo Aperte qualquer tecla para voltar.
pause >nul
goto menu

:crashoukkk
color 9f
cls
echo.
echo :(
echo.
echo Ocorreu um problema e seu PC precisou ir de base.
echo.
echo Zueira,
echo Vc so escolheu a opcao de crashar o computador.
ping localhost -n 8 >nul
goto bootscreen