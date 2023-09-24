#!/usr/bin/env bash
#
#
#
# Váriaveis do Programa:
user="lucas"
pass="757206"
#
#
#
# INICIO DO PROGRAMA

clear

echo -e "\n--------------- MENU DE OPÇÕES------------------\n"


read -p "Login:    " _login
read -p "Password: " _password


echo -e "\n------------------------------------------------\n"


if [[ "$_login" = "$user" ]] && [[ "$pass" -eq "$_password" ]]; then
    echo "Verificando..."
    sleep 3s
    echo "Usuario Correto!"
else
    echo "Wrong Password!... Try Again"
    exit 1
fi


echo \
"
---------------- BEM VINDO $user ---------------

1) Abrir Terminal
2) Abrir Gedit
3) Abrir Opera
4) Sair

"

echo -e "\n------------------------------------------------\n"

read -p "O que deseja fazer? " opcao


if [[ "$opcao" -eq "1" ]]; then
    urxvt &
elif [[ "$opcao" -eq "2" ]]; then
    gedit &
elif [[ "$opcao" -eq "3" ]]; then
    opera &
elif [[ "$opcao" -eq "4" ]]; then
    exit 0
else
    echo "Escolha uma Opção Válida!"
    exit 1
fi
