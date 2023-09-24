#!/usr/bin/env bash
#
# LIMPANDO A TELA
clear
#
# ---- PROGRAMA DE BACKUP ----
#
#
echo "--------------------------------------------------------"
echo -e "\n------------- Iniciando Programa de Backup -------------\n"

read -p "Insira o caminho do Diretorio de Origem: " origem



echo "--------------------------------------------------------"
[[ -d "$origem" ]] || { echo "Insira um caminho válido de Origem para o Backup!"; exit 1;}




echo -e "\n########################################################"
echo -e "#  Os Seguintes Arquivos serão incorporados ao BACKUP: #"
echo -e "########################################################\n"

exa -a "$origem"

echo -e "\n--------------------------------------------------------\n"

read -p "Insira o caminho do Diretorio de Destino: " destino

[[ -d "$destino/BACKUP" ]] || { echo "Criando Diretorio de Backup!"; mkdir "$destino/BACKUP" ;} && { echo -e "\nO Diretorio $destino/BACKUP ja esta criado!" ;}

echo -e "\n--------------------------------------------------------\n"

echo "############ COMPACTANDO E COPIANDO ARQUIVOS ###########"

echo -e "\n--------------------------------------------------------\n"

[[ -e $destino/BACKUP/BACKUP.tar ]] && { echo "O arquivo ja existe! Removendo o antigo! Criando NOVO!"; rm "$destino/BACKUP/BACKUP.tar" ;}

[[ $(tar -cvf "$destino/BACKUP/BACKUP.tar" "$origem") ]] && { echo "O BACKUP ESTA FEITO!" ;}


echo -e "\n--------------------------------------------------------\n"

echo "############ O BACKUP JA ESTA FEITO ####################"

echo -e "\n--------------------------------------------------------\n"
