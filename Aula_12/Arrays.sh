#!/usr/bin/env bash
#
echo -e "\n------------------------------------------------------------------------------------------\n"
echo -e "# Uma variavel no SHELL armazena um unico valor, um array armazena diversos valores.\n"

echo -e "Existem dois tipos de vetores no SHELL:\n"
echo "NORMAIS - são numerados a partir do valor 0"
echo "array[indice]=valor"
echo -e "\n---------------------------------------------------\n"
echo "ASSOCIATIVOS - voce determina o valor das posições"
echo "dados[nome]"
echo "dados[sobrenome]"
echo "dados[idade]"

echo -e "\n------------------------------------------------------------------------------------------\n"
echo -e "# Cortando uma variavel de jeito antigo, podem ter valores determinados ou strings.\n"

echo "var=\"ABACAXI TOMATE CEBOLA BANANA\""
var="ABACAXI TOMATE CEBOLA BANANA"
echo "echo \$var"
echo "Resultado:"
echo "$var"
echo "-----------------------------------"
echo "-- PARA CORTAR CAMPO 1:"
echo "echo \"\$var\" | cut -d ' ' -f 1"
echo "Resultado:"
echo "$var" | cut -d ' ' -f 1
echo "-----------------------------------"
echo "-- PARA CORTAR CAMPO 2:"
echo "echo \"\$var\" | cut -d ' ' -f 2"
echo "Resultado:"
echo "$var" | cut -d ' ' -f 2
echo "----------------------------------"
echo "-- PARA CORTAR CAMPO 3:"
echo "echo \"\$var\" | cut -d ' ' -f 3"
echo "Resultado:"
echo "$var" | cut -d ' ' -f 3
