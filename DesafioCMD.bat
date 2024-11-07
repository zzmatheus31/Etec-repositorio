@echo off
set REPO_URL=https://github.com/zzmatheus31/Etec-repositorio
set REPO_DIR=C:\Etec-repositorio
git clone %REPO_URL% %REPO_DIR%
cd %REPO_DIR%
set GIT_USER_NAME=zzmatheus31
set GIT_USER_EMAIL=carvalhowallacematheus8@gmail.com
git config user.name "%GIT_USER_NAME%"
git config user.email "%GIT_USER_EMAIL%"
hostname > hostname.txt
for /f "tokens=2 delims=[]" %%i in ('ping -n 1 -4 8.8.8.8 ^| find "["') do echo %%i > ip.txt
git add hostname.txt ip.txt
git commit -m "Adicionando arquivos de hostname e IP"
git push origin main
echo Feito.
pause
