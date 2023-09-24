#!/usr/bin/env bash

echo -e "\n#### Extrutura de Bloco para SINTAXE (IF/THEN/ELSE) ####\n"

echo "if CONDICÃO/COMANDO"
echo "then"
echo "    BLOCO COMANDOS_1"
echo "else"
echo "    BLOCO COMANDOS_2"
echo "fi"

echo -e "\n-----------------------------------------------------------\n"
echo -e "Verificando a existencia de um arquivo:\n"

if [[ -n Estruturas_Condicionais.sh ]];
then
    echo -e "O Arquivo não é Nulo, ele Existe!\n"
fi

echo -e "\n-----------------------------------------------------------\n"
echo -e "Verificando a conexão com a internet\n"

if wget -q --spider www.google.com.br;
then
    echo "TEM INTERNET!"
else
    echo "NÃO TEM INTERNET!"
fi


echo -e "\n--------------ATRAVESSANDO A RUA---------------------------\n"
echo -e "Verificando podemos atravessar a rua\n"

read -p "Esta vindo um carro da DIREITA? [sim/não] " resp1
if [[ "$resp1" = "sim" ]];
then
    echo "NÃO ATRAVESSAR!"
    exit 1
fi

read -p "Esta vindo um carro da ESQUERDA? [sim/não] " resp1
if [[ "$resp1" = "sim" ]];
then
    echo "NÃO ATRAVESSAR!"
    exit 1
fi

read -p "Posso atravessar a rua? [sim/não] " resp1
if [[ "$resp1" = "sim" ]];
then
    echo "Então ATRAVESSE!"
    exit 0
else
    echo "Então não ATRAVESSE!"
    exit 1
fi

