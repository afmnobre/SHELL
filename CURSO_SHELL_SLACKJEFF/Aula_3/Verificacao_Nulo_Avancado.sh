#!/usr/bin/env bash
#
# Com as CHAVES ELE EXECUTA O BLOCO DE PROGRAMA e FINALIZA O PROGRAMA e não executa o resto do
# programa.
#
#
echo -e "\n############## NÂO AGRUPANDO O NÂO NULO #############################\n"

read -p "Coloque um valor ou não para a variável 1:  " valor1

test -z "$valor1" && { echo "NULA!" ; exit ;} \
                  || echo "NÃO NULA!"

echo -e "\n---- CONTINUANDO O PROGRAMA ----"

echo -e "\n############## AGRUPANDO OS TESTES EM BLOCOS ########################\n"

read -p "Coloque um valor ou não para a variável 2:  " valor2

test -z "$valor2" && { echo "NULA!" ; exit ;} \
                  || { echo "NÃO NULA!" ; exit ;}

echo "CONTINUANDO O PROGRAMA"
