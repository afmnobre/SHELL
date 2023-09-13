#!/usr/bin/env bash
#
#

echo $USER
echo $SHELL
echo $HOME
echo $PATH

echo "Transformando uma variavel em varivael global"

nome="Lucas"
echo "$nome"
export nome
bash
echo "$nome"

echo "Para listar as variaveis globais é só usar o comando env"
