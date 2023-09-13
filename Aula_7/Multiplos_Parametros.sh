#!/usr/bin/env bash
#
#
# Como usar parametros em SHELL SCRIPT.
#
#

echo "O Nome do Programa é:    $0"
echo "O Primeiro Parametro é:  $1"
echo "O Segundo Parametro é:   $2"
echo "O Terceiro Parametro é:  $3"
echo "O Quarto Parametro é:    $4"
echo "O Décimo Parametro é:    ${10}" # Pega o parametro na posição especifica, no caso aqui a decima posição.

echo "O Numero Total de Parametros passados foi: $#"



IFS=: # INTERNAL FIELD SEPARATOR

echo -e "\n---------------------------------\n"

echo "Todos os Parametros com \$* : $*"



echo -e "\n---------------------------------\n"

echo "Todos os Parametros com \$@ : $@"
