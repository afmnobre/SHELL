#!/usr/bin/env bash
#
#
#
clear

echo -e "\n------------------------------"
echo -e "FUNÇÕES PADRÃO POSIX:"
echo -e "------------------------------\n"

echo -e "  nome_da_funcao(){"
echo "       COMANDOS"
echo "  }"

echo -e "\n------------------------------"
echo -e "FUNÇÔES PADRÃO BASH:"
echo -e "------------------------------\n"

echo -e "  Function nome_da_funcao(){"
echo "       COMANDOS"
echo "  }"

echo -e "\n----------------------------"


# FUNÇÂO QUE IMPRIME A VERSÃO DO Linux
versao_linux(){ cat /etc/os-release ;}
echo "A versão do Linux é:
----------------------------"
versao_linux # CHAMANDO FUNÇÃO



echo -e "\n---------------------------------------"
echo "VARIAVEIS GLOBAIS E LOCAIS"
echo "---------------------------------------"


# ATRIBUINDO UMA FUNÇÃO COM VARIAVEIS LOCAIS
diretorio_1="/home/lucas"
caminho_1(){
    diretorio_1="/home/novo"
    echo "$diretorio_1"
}
echo "O Diretório é $diretorio_1 e o caminho é "
caminho_1

echo "---------------------------------------"

diretorio_2="/home/lucas"
caminho_2(){
    local diretorio_2="/home/novo"
    echo "$diretorio_2"
}
echo "O Diretório é $diretorio_2 e o caminho é "
caminho_2

