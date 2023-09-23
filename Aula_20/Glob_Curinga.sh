#!/usr/bin/env bash
#
#
echo "

# CASAMENTO DE PADRÕES.

Antigamente era um programa
"

echo " *    : Qualquer coisa."
exa *
echo -e "\n*.txt : Qualquer coisa com extenção txt."
exa *.txt

echo -e "\n*.png : Qualquer coisa com extenção png."
exa *.png

echo -e "\n*.sh : Qualquer coisa com extenção sh."
exa *.sh

echo -e "\nContanto a quantidade de arquivos. wc -l. (Resultado - 1)"
exa | wc -l


echo -e "\n? : Faz o Coringa pra 1 caracter qualquer: ls arquivo_?.txt"
exa arquivo_?.txt

echo -e "\n?? : Faz o Coringa pra 2 caracteres quaisquer: ls *.??g"
exa *.??g

