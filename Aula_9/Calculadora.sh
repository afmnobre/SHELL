#!/usr/bin/env bash
#
#
#FUNCÕES DA CALCULADORA
function _adicao(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _adicao
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 + $numero_2))"
}

function _subtracao(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _subtracao
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 - $numero_2))"
}

function _multiplicacao(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _multiplicacao
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 * $numero_2))"
}

function _divisao(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _divisao
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 / $numero_2))"
}

function _resto_divisao(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _resto_divisao
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 % $numero_2))"
}

function _exponencial(){
    #RECEBENDO VALORES
    read -p "Digite o Primeiro Numero: " numero_1
    read -p "Digite o Segundo Numero:  " numero_2
    #TESTANDO OS VALORES
    if [[ -z "$numero_1" ]] || [[ -z "$numero_2" ]]; then
        echo "Entre com um numero Válido."
        _exponencial
    fi
    echo "RESULTADO:"
    echo "$(($numero_1 ** $numero_2))"
}
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
