#!/bin/bash

echo -n "Agrega un directorio: "
read Directorio

echo -n "Agrega el nombre de la extencion que quieres: "
read extencion

echo -n "El nombre que quieres que lleve los archivos: "
read nombre

contador=1

for archivo in $( ls -1tr "$Directorio" ); do
    if [ -f "$Directorio/$archivo" ]; then
        mv "$Directorio/$archivo" "$Directorio/$nombre$contador.$extencion"
        contador=$((contador + 1))
    fi
done 

echo "Proceso terminado"
echo "Verifica que de que haya funcion$extencion"
