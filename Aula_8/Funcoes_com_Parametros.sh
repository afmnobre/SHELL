#!/usr/bin/env bash
#
#
#
#
#
#
# FUNÇÃO PARA DESCOBRIR SE VARIAVEL É NULA
echo "FUNÇÃO PARA DESCOBRIR SE VARIAVEL É NULA."

function parametros(){
    [[ -z "$1" ]] && echo "VARIÁVEL NULA!" || echo "VARIÁVEL NÃO NULA!"
}

# CHAMANDO A FUNÇÃO E ATRIBUINDO O PARAMETRO.
parametros "$@"
