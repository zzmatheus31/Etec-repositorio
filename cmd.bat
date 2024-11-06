@echo off
vol C:
ver
cls
dir C:\
mkdir C:\Huginho
mkdir C:\Zezinho
mkdir C:\Luizinho

if exist C:\Huginho echo Pasta Huginho criada.
if exist C:\Zezinho echo Pasta Zezinho criada.
if exist C:\Luizinho echo Pasta Luizinho criada.

for %%P in (Huginho Zezinho Luizinho) do (
    mkdir C:\%%P\Argentina
    mkdir C:\%%P\Brasil
    mkdir C:\%%P\Uruguai
    if exist C:\%%P\Argentina echo Subpasta Argentina criada em %%P.
    if exist C:\%%P\Brasil echo Subpasta Brasil criada em %%P.
    if exist C:\%%P\Uruguai echo Subpasta Uruguai criada em %%P.
)

for %%P in (Huginho Zezinho Luizinho) do (
    rmdir /S /Q C:\%%P\Argentina
    echo Subpasta Argentina removida de %%P.
)

echo Log de execução > C:\log.txt

for %%P in (Huginho Zezinho Luizinho) do (
    copy /Y C:\log.txt C:\%%P\
    if exist C:\%%P\log.txt echo log.txt copiado para a pasta %%P.
)

pause