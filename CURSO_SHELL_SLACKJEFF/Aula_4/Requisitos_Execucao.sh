#!/usr/bin/env bash
#
#
# Exemplo de como verificar os requisitos do sistema para seu SCRIPT.
#

echo -e "\n-----------------------------------------------------\n"

echo "Verificando se o GEDIT esta instalado no SISTEMA"
[[ $(type -P gedit) ]] && { echo -e "O GEDIT esta instalado!" ;} || { echo -e "Precisa Instalar o GEDIT!" ; exit ;}

echo -e "\n-----------------------------------------------------\n"

echo "Verificando se tem internet no SISTEMA"
wget -q --spider www.google.com.br && echo -e "Internet OK!" || { echo -e "Precisa de Internet!" ;  exit ;}


echo -e "\n-----------------------------------------------------\n"

echo "Verificando se o NMAP esta instalado no SISTEMA"
[[ $(type -P nmap) ]] && { echo -e "O NMAP esta instalado!" ;} || { echo -e "Precisa Instalar o NMAP!" ; exit ;}


echo -e "\n-----------------------------------------------------\n"

echo "Verificando se o USUARIO é ROOT"
[[ "$UID" -eq "0" ]] && { echo -e "Ok, Esta como ROOT" ;} || { echo -e "Precisa Logar como Root!" ; exit ;}

