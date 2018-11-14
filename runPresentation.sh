#!/bin/bash

if [ $# -lt 1 ] || [ $# -gt 2 ]
then 
    echo "El número de argumentos no es correcto. Para ver cómo se usa el programa use la opción -h"
    exit 0
fi

 
if [ "$1" == "-h" ]
then
    echo "Abre la presentación con pdfpc. Uso: runPresentation PATH DURACION. Si no se le da la duración durará 45 minutos por defecto."
    exit 0
fi

DURATION=$2

DISPLAY=:0 pdfpc $1 --duration=${DURATION:=45} --notes=right --last-minutes=10

