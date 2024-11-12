@echo off
set "SHARED_DIR=C:\Desarrollo\Aquatica\msp20\BM"
set "SCRIPT_NAME=Ejecutador.sh"

docker run --rm -v "%SHARED_DIR%:/mnt/shared" -e SCRIPT_NAME="%SCRIPT_NAME%" msp20