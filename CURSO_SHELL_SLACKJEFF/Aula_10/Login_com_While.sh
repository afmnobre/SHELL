#!/usr/bin/env bash
#
#Variaveis do Sistema:
user="lucas"
pass="1"
cpf="1"

function _logar(){
    total="0"
    while true; do
        #Lendo Variáveis do Sistema
        echo "+---------------------+"
        echo "| Tentativas $total/3      |"
        echo "+---------------------+"
        read -p "Login: " _login
        read -t 5 -sp "Password: " _pass
        read -sp $'\nCPF: ' _cpf
        #conferindo se as variaveis batem.
        if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$pass" ]] && [[ "$_cpf" = "$cpf" ]];then
            echo -e "\nLogado com Sucesso!... ACESSANDO SISTEMA\n"
            sleep 2s
            clear
            break #Parando o Loop
        else
            echo -e "\n--------------------------------"
            echo "| Login ou Password INVÁLIDOS! |"
            echo "--------------------------------"
            let total++  #INCREMENTANDO A VARIAVEL TOTAL
            [[ "$total" -eq "4" ]] &&  exit 1
        fi
    done
}
# CHAMANDO A FUNCÃO LOGAR
_logar

echo -e "\n-- MENU DO SISTEMA! --"
