#!/usr/bin/env bash


listagem_um=$(ls /boot)
listagem_dois=$(ls /home)
listagem_tres=$(ls /home/flavio)

echo "------------------------------------"
echo -e "Listando '/boot' \n$listagem_um"
echo "------------------------------------"
echo -e "listando '/home' \n$listagem_dois"
echo "------------------------------------"
echo -e "Listando '/user' \n$listagem_tres"
echo "------------------------------------"


ID=$(echo "$UID")

echo "O ID do usuario Logado no momento é: $ID"

echo "------------------------------------"

diretorio="/home"
caminho="/home/lucas"
echo "Executando o PWD"
pwd
echo "Entrando no Diretório $diretorio"
cd "$diretorio"
pwd
echo "Entrando na Home de Usuario $caminho. $(cd "$caminho")"
pwd



