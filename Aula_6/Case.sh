#!/usr/bin/env bash
#
#
#
#Exemplo de case
#
#
#

echo -e "\n------------------------------\n"

read -p "Qual o seu nome? " nome

case "$nome" in
    jefferson)
        echo "O nome é Jefferson"
    ;;
    lucas)
        echo "O nome é Lucas"
    ;;
   daniel)
        echo "O nome é Daniel"
    ;;
   matheus)
        echo "O nome é Matheus"
    ;;
   marta)
        echo "O nome é Marta"
    ;;
   adilson)
        echo "O nome é Adilson"
    ;;
    *)
        echo "Nome não encontrado!"
esac

echo -e "\n------------------------------\n"

read -p "Escreva uma Palavra ou Numero: " variavel

case "$variavel" in
    [0-9]) echo "Você escreveu um Número.";;
    lucas|Lucas|LUCAS) echo "Você escreveu o nome Lucas.";;
    matheus|Matheus|MATHEUS) echo "Você escreveu o nome Matheus.";;
    daniel|Daniel|DANIEL) echo "Você escreveu o nome Daniel.";;
    *) echo "Você escreveu algo que não foi configurado.";;
esac

