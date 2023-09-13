#!/usr/bin/env bash
#
#
#
#
#FAZENDO A FUNÇÃO RETORNAR STATUS DE SAIDA 5 COM O RETURN.


echo -e "\nFAZENDO A FUNÇÃO RETORNAR STATUS DE SAIDA 5 COM O RETURN.\n"


function status_saida(){
    local diretorio="$HOME"
    exa "$diretorio"
    return 5
}
status_saida
echo -e "\nSTATUS DE SAIDA --- $?"
