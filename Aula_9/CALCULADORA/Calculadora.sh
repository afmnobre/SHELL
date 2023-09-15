#!/usr/bin/env bash
#
#
#INSERINDO ARQUIVO DE FUNCÕES DA CALCULADORA
source Funcoes.inf

#LIMPANDO A TELA
clear

#CRIANDO CALCULADORA

echo -e "\n+-------------------------------------+"
echo "+           CALCULADORA               +"
echo "+-------------------------------------+"

# --- PROMPT PARA ESCOLHER OS OPERADORES ARITMETICOS.
function _menu(){
    echo -e "\n+-------------------------------------+"
    echo "+       O que deseja fazer?           +"
    echo "+-------------------------------------+"
    echo "+                                     +"
    echo "+       1) : Adição                   +"
    echo "+       2) : Subtração                +"
    echo "+       3) : Multiplicação            +"
    echo "+       4) : Divisão                  +"
    echo "+       5) : Resto da Divisão         +"
    echo "+       6) : Num1 Exponencial Num2    +"
    echo "+       7) : Sair                     +"
    echo "+                                     +"
    echo -e "+-------------------------------------+\n"

    read -p "Selecione a OPERAÇÃO: " operacao

    case $operacao in
        1) _adicao ;;
        2) _subtracao ;;
        3) _multiplicacao ;;
        4) _divisao ;;
        5) _resto_divisao ;;
        6) _exponencial ;;
        7) echo "SAINDO DA CALCULADORA"; exit 0 ;;
        *) echo "SELECIONE UMA OPERAÇÃO VÁLIDA"; exit 1 ;;
    esac
}

_menu
