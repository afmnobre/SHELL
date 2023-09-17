#!/usr/bin/env bash
#
#
#VARIAVEIS DE COR
vermelho="\033[31;1m"
verde="\033[32;1m"
fecha_cor="\033[m"
#
#
# Verificando que ira passar pelo menos 1 PARAMETRO.
(($#=="0")) && { echo "Precisa passar pelo menos o nome de um programa!" ; exit 1 ;}

while [[ -n "$1" ]]; do
    if type -P "$1"; then
        echo -e "$verde O Programa $1 EXISTE! $fecha_cor"
    else
        echo -e "$vermelho O Programa $1 NÃO EXISTE! $fecha_cor"
    fi
    shift
done
