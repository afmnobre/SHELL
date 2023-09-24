#!/usr/bin/env bash
#
#
echo "---------------------------------------------------------------------"
echo -e "\n# Extrurura de LOOP UNTIL\n"

echo "until [[ CONDIÇÃO ]]; do"
echo "   BLOCO DE CODIGO"
echo "done"

echo -e "\n*EXECUTA O BLOCO DE CODIGO ATÉ QUE A CONDIÇÂO SEJA VERDADEIRA.\n"

echo -e "---------------------------------------------------------------------\n"

echo -e "Verificando se um programa esta em execução e depois executa.\n"

read -p "Digite o nome do PROGRAMA: " programa

until ps -e | grep "$programa"; do
    echo "Por favor abra o $programa."
    sleep 1s
done

