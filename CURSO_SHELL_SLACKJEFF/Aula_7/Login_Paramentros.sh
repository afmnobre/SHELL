#!/usr/bin/env bash
#
#
# MENU PARA EXECUTAR PROGRAMAS
#
#
#
#
# LIMPANDO  A TELA
clear

# VARIAVEIS DO SISTEMA:
user="lucas"
pass="1"
doct="1"


# CHAMADA EM LINHA
case $1 in
   --l | --login)
            # INICIO DO PROGRAMA - AUTENTICAÇÃO:
            echo -e "\n---------- MENU DE AUTENTICAÇÃO e PROGRAMAS ----------\n"
            read -p "Login:    " _login
            read -t 5 -sp "Password: " _pass
            read -sp  $'\nCPF:      ' _cpf
            # VERIFICANDO AUTENTICAÇÃO
            if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$pass" ]] && [[ "$doct" = "$_cpf" ]]; then
                echo -e "\nLogado com SUCESSO! Iniciando SISTEMA!"
                sleep 2s
            else
                echo "Login ou Senha inválidos!"
                exit 1
            fi
    ;;
    # CRIANDO MENU DE AJUDA - CONTEXTO, acessar com PARAMETROS
    --h | --help)
        echo -e "\n------------ OPÇÕES DISPONIVEIS -------------\n"
        echo "-l ou --login : Abrir a tela de Autenticação."
        echo "-h ou --help  : Abrir a tela de Ajuda."
        echo "---------------------------------------------"
        exit 0;
    ;;
    *)
        echo -e "\n ---------- AJUDA -----------------------\n"
        echo "Use a opção --h ou --help"
        echo "---------------------------------------------"
        exit 0;
    ;;
esac


echo -e "\n########## INICIANDO PROGRAMA ##########\n"

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


