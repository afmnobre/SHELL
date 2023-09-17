#!/usr/bin/env bash
#
#
echo -e "\n------------------------------------------------------------------------------------------\n"
echo -e "# Uma variavel no SHELL armazena um unico valor, um array armazena diversos valores.\n"

echo -e "Existem dois tipos de vetores no SHELL:\n"
echo "NORMAIS - são numerados a partir do valor 0"
echo "array[indice]=valor"
echo "-----------------------------------"
echo "ASSOCIATIVOS - "


echo -e "\n------------------------------------------------------------------------------------------\n"
echo -e "# Cortando uma variavel de jeito antigo.\n"

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
