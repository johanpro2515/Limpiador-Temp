#!/bin/bash

echo "=============================================="
echo "    LIMPIADOR DE ARCHIVOS TEMPORALES"
echo "=============================================="


if [ -d "$HOME/.cache" ]; then

    echo "Calculando cantidad de archivos temporales..."

    cantidad=$(find "$HOME/.cache" -type f | wc -l)

    echo "Se encontraron $cantidad archivos temporales."
    echo "Iniciando limpieza..."

    rm -rf "$HOME/.cache/"*

    echo "----------------------------------------------"
    echo "Limpieza completada."
    echo "Se eliminaron $cantidad archivos temporales."
    echo "----------------------------------------------"

else
    echo "La carpeta de caché no existe."
fi

echo "Fin del programa."