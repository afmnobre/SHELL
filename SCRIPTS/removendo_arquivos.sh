#!/usr/bin/env bash
#
#

read -p "Digite o nome do arquivo que quer remover: " arquivo


for linha in $( sudo find / -name "$arquivo"); do
    echo "REMOVENDO: $linha"
    [[ $(rm -rf $linha) ]] && { echo "Removido com Sucesso!"; } || { echo "Falha na remoção!"; }
done


