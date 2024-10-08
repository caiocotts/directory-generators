:::::::::::::::::::::::::::::::::::::::
:::::::::::: CAIO COTTS :::::::::::::::
:: Comp1234 file structure generator ::
:::::::::::::::::::::::::::::::::::::::

@echo off
setlocal enabledelayedexpansion

mkdir comp1234\lab comp1234\assignments

cd comp1234\assignments

for /l %%i in (1,1,3) do (
    set "num=0%%i"
    mkdir assignment!num:~-2!
)

for /d %%d in (*) do (
    mkdir "%%d\assets\img"
    mkdir "%%d\assets\css"
)

cd ..\lab

mkdir practices exercises

for /d %%d in (*) do (
    for /l %%i in (1,1,14) do (
        set "num=0%%i"
        mkdir "%%d\wk!num:~-2!"
    )
)

echo Comp1234 file hierarchy created

endlocal