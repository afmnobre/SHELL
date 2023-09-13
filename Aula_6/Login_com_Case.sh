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
read -sp "Password: " _password    # sp = esconde caracteres para não ver a senha.


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
4) Abrir Audacious
5) Sair

"

echo -e "------------------------------------------------"

read -p "Selecione uma Opção: " opcao

case "$opcao" in
    1)
        [[ $(type -P urxvt) ]] || { echo "O Urxvt não existe no sistema"; exit 1 ;}
        urxvt &
    ;;
    2)
        [[ $(type -P gedit) ]] || { echo "O Gedit não existe no sistema"; exit 1 ;}
        gedit &
    ;;
    3)
        [[ $(type -P opera) ]] || { echo "O Opera não existe no sistema"; exit 1 ;}
        opera &
    ;;
    4)
        [[ $(type -P audacious) ]] || { echo "O Audacious não existe no sistema"; exit 1 ;}
        audacious &
    ;;
    5) exit 0 ;;
    *) echo "Selecione uma opção válida!." ;;
esac
