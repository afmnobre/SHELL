#!/usr/bin/env bash
#
#DECLARANDO O ARRAY
declare -A dados

#INSERINDO DADOS NO ARRAY
dados[nome]="Lucas"
dados[sobrenome]="Nobre Ferreira Martins"
dados[idade]="36 anos"
dados[cidade]="Guarulhos"
dados[cpf]="xxx.xxx.xxx-xx"

#CHAMANDO OS DADOS DO ARRAY
echo -e "O Nome é: ${dados[nome]}\nO Sobrenome é: ${dados[sobrenome]}\nO CPF é: ${dados[cpf]}"
