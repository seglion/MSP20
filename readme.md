# Creación de una Imagen Docker para ejecutar el MSP de Aquatica

Este documento describe los pasos para crear y utilizar una imagen Docker que ejecuta el software MSP de Aquatica. Con esta imagen, evitamos la pérdida de dependencias y simplificamos la configuración en caso de que los equipos sean formateados o necesiten una reinstalación rápida del entorno.

## Tabla de Contenidos

- [Ejecutable](#ejecutable)
- [Imagen Docker](#imagen-docker)
- [Introducción](#introduccion)
- [Dockerfile](#dockerfile)
- [Cómo Ejecutar](#como-ejecutar)
- [Ejemplo de Ejecutador.sh](#ejemplo-de-ejecutadorsh)

## Introducción

El objetivo de este proyecto es crear una imagen Docker para facilitar la ejecución de MSP de Aquatica sin preocuparse por la pérdida de dependencias. Esto es particularmente útil si el equipo se formatea frecuentemente o se necesita una configuración rápida y estandarizada.

## Imagen Docker 

La imagen Docker está disponible en [seglion\msp20](https://hub.docker.com/r/seglion/msp20).

Para descargar la imagen, usa el siguiente comando:

```bash
docker pull seglion/msp20
```


## Dockerfile

En la carpeta ImagenDocker, encontrarás el archivo Dockerfile y la carpeta ejecutable, donde se almacena el ejecutable MSP. Puedes utilizar este Dockerfile para construir la imagen en tu entorno local si necesitas realizar ajustes o personalizar la configuración.


## Cómo Ejecutar

1. Preparación de Archivos: Copia los archivos de tus casos en una carpeta, asegurándote de incluir los archivos MEF y CON necesarios para cada simulación.

2. Script de Ejecución: Copia un archivo Ejecutador.sh en la carpeta compartida para ejecutar las simulaciones en bucle.

3. Ejecutar con Iniciacion.bat: Ejecuta el archivo Iniciacion.bat para iniciar el contenedor con el entorno adecuado. El archivo .bat se encarga de configurar las rutas y ejecutar el script necesario.

## Ejemplo de Ejecutador.sh

En esta carpeta  se muestra un ejemplo de cómo debe estructurarse el archivo Ejecutador.sh para ejecutar los casos en bucle: