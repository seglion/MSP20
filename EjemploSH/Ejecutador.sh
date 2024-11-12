#!/bin/bash 

END=80
SHARED_DIR="/mnt/shared"
CASE_NAME = "Pindo_EA_marea_0.1_"

# Crear la carpeta resultados si no existe
RESULTS_DIR="$SHARED_DIR/resultados"
mkdir -p "$RESULTS_DIR"



for i in $(seq 1 $END); do

	CASE_NUM=$(printf "%02d" $i)
    # Copia los archivos con rutas absolutas
    cp -p "$SHARED_DIR/$CASE_NAMEMEF" "$SHARED_DIR/CASO_${i}MEF"
    cp -p "$SHARED_DIR/$CASE_NAMECON" "$SHARED_DIR/CASO_${i}CON"
    cp -p "$SHARED_DIR/CASO_${i}sp.inp" "$SHARED_DIR/CASO_${i}SP.INP"
    
    # Ejecuta el programa en la carpeta compartida
    msp_IHaquatica "$SHARED_DIR/CASO_$i"
	    # Copia el archivo .res resultante en la carpeta resultados
    # Suponiendo que el archivo de resultados se llama "CASO_i.res"
    cp -p "$SHARED_DIR/CASO_${i}.res" "$RESULTS_DIR/CASO_${CASE_NUM}.res"

    # Elimina los archivos generados después de la simulación
    rm "$SHARED_DIR/CASO_${i}MEF"
    rm "$SHARED_DIR/CASO_${i}CON"
done