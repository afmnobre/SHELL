#!/usr/bin/env bash
#
#
#
#
# Criando um MENU.
# 1) Abertura de Browser
# 2) Abertura do GEDIT
# 3) Abertura do Terminal
# 4) Sair
#
#
#
clear

echo "+================================================+"
echo "#         1) Abrir o Browser                     #"
echo "#         2) Abrir o Gedit                       #"
echo "#         3) Abrir o Terminal                    #"
echo "#         4) Sair                                #"
echo "+================================================+"

echo -e "\n--------------------------------------------------\n"

read -p "Selecione uma das opções: " opcao

if [[ "$opcao" -eq "1" ]];
then
    opera &
    ./Menu.sh
elif [[ "$opcao" -eq "2" ]];
then
    gedit &
    ./Menu.sh
elif [[ "$opcao" -eq "3" ]];
then
    urxvt &
    ./Menu.sh
elif [[ "$opcao" -eq "4" ]];
then
    echo "SAINDO!"
    exit 0
else
    echo "Escolha uma Opção VÁLIDA!"
    ./Menu.sh
fi


