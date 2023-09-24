#!/usr/bin/env bash
#

echo -e "\n FORMULARIO DE CADASTRO DE SISTEMA \n"

read -p "Digite seu nome:           " nome_completo
test -z "$nome_completo" && { echo "Digite um nome válido!"; exit ;}

read -p "Digite sua idade:          " idade
test -z "$idade" && { echo "Digite uma idade válida!"; exit ;}

read -p "Digite seu rg:             " registro_geral
test -z "$registro_geral" && { echo "Digite um RG válido!"; exit ;}

read -p "Digite sua nacionalidade:  " nacionalidade
test -z "$nacionalidade" && { echo "Digite uma Nacionalidade válida!"; exit ;}

read -p "Digite o seu E-mail:       " email
test -z "$email" && { echo "Digite um E-mail válido!"; exit ;}

read -p "digite o seu celular:      " celular
test -z "$celular" && { echo "Digite um celular válido!"; exit ;}

echo -e "\n------- FINALIZANDO CADASTRO --------------\n"

read -p "Os dados estão corretos?[S/N]  " validar
validar=${validar^^} #Chapeuzinho duplo transforma tudo na STRING em MAISCULO

test "$validar" = "S" && { echo "Dados Cadastrados com Sucesso!" ; exit ;} \
                      || { echo "Ok, Refaça o Cadastro!"; exit ;}

