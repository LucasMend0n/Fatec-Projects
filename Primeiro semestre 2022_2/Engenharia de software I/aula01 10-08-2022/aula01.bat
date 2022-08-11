@echo off 

title programacao sequencial bat 
mode 60, 30
color 0a
:inicio
cls

echo. 
echo                  ( o o )
echo      ------Ooo------()------ooO-----
echo                Menu principal
echo.
echo. 
echo [1] Executar word
echo [2] Executar Excel 
echo [3] Chamar teclado virtual 
echo [4] Calculadora
echo [5] Web 
echo [6] Testar conexao de rede
echo [F] Finalizar programa 
echo. 
set /p option=Digite a opcao desejada: 
if %option% == 1 (goto:word)
if %option% == 2 (goto:planilha)
if %option% == 3 (goto:teclado)
if %option% == 4 (goto:calcular)
if %option% == 5 (goto:internet)
if %option% == 6 (goto:ping)
if /i %option% == f (exit) else (
   echo.
   echo -------------------
   echo  Opcao Invalida!
   echo -------------------
   pause > nul
   goto:inicio )

:word
start winword.exe
goto:inicio

:planilha
start excel.exe
goto:inicio

:teclado
start osk.exe
goto:inicio

:calcular
start calc.exe
goto:inicio

:internet
echo.
set /p site=Digite o endereco da pagina: 
start %site% 
goto:inicio

:ping
echo. 
set /p conexao=Digite o IP ou endereco da pagina:
ping %conexao% 
goto:inicio
 



