#!/usr/bin/env bash
#
#
#
echo "Qual o seu Nome?"
read nome

echo "Qual sua altura?"
read altura

echo "Qual sua escolaridade?"
read escolaridade

echo -e "#######################"
echo -e "O seu nome é: $nome\n"
echo -e "A sua altura é: $altura\n"
echo -e "A sua escolaridade é: $escolaridade\n"
echo -e "#######################\n"

echo -e "######## COM REDUÇÃO DE CODIGO #################\n"

read -p "Qual o seu Nome?" nome
read -p "Qual a sua Altura?" altura
read -p "Qual a sua Escolaridade?" escolaridade

echo "Meu nome é $nome, minha altura é $altura e minha escolaridade é $escolaridade "
