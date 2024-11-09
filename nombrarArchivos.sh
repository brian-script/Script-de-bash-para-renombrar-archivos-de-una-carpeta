#!/bin/bash

#preguntamos al usario que necesita
echo -n "Agrega un directorio: "
read Directorio

echo -n "Agrega el nombre de la extencion que quieres: "
read extencion

echo -n "El nombre que quieres que lleve los archivos: "
read nombre

#creamos un contador para diferenciar los archivos
contador=1

#creamos un ciclo for donde ordenamos los archivos de mas viejo a mas nuevo del directorio anteriormente pedido
for archivo in $( ls -1tr "$Directorio" ); do
    #verificamos que si es un archivo o una carpeta
    if [ -f "$Directorio/$archivo" ]; then
        mv "$Directorio/$archivo" "$Directorio/$nombre$contador.$extencion"
        contador=$((contador + 1))
    fi
done 

#mensaje en pantalla
echo "Proceso terminado"
echo "Verifica que de que haya funcion"
