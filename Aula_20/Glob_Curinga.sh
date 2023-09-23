#!/usr/bin/env bash
#
#
clear
echo "

#-------------------------------------------------------------------------

# CASAMENTO DE PADRÕES.
Pode ser chamado de caracter CURINGA.
Antigamente era um programa.
"

echo -e "\n--------------------------------------------------------------------------"
echo " *    : Qualquer coisa."
exa *
echo -e "\n*.txt : Qualquer coisa com extenção txt."
exa *.txt

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n*.png : Qualquer coisa com extenção png."
exa *.png

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n*.jpg : Qualquer coisa com extenção jpg."
exa *.jpg

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n*.sh : Qualquer coisa com extenção sh."
exa *.sh

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nContanto a quantidade de arquivos. wc -l. (Resultado - 1)"
exa | wc -l

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n? : Faz o Coringa pra 1 caracter qualquer: ls arquivo_?.txt"
exa arquivo_?.txt

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n? : Faz o Coringa pra 1 caracter qualquer: ls ?.html"
exa ?.html

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n?? : Faz o Coringa pra 2 caracteres quaisquer: ls *.??g"
exa *.??g

echo -e "\n--------------------------------------------------------------------------"
echo -e "\n[] : NEGANDO CARACTERES:
exemplo 1: Negando tudo que começa com a letra A : ls [^A].html"
exa [^A].html

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 2: Negando tudo que começa com a letra A até G : ls [^A-G].html"
exa [^A-G].html

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 2: Negando tudo que começa com a letra A até I : ls [^A-I].html"
exa [^A-I].html

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 3: Negando tudo que começa com caracteres MINÚSCULOS. ls [^a-z]*.*???"
exa [^a-z]*.*???

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 4: Negando tudo que começa com caracteres MAIÚSCULOS. ls [^A-Z]*.*???"
exa [^A-Z]*.*???

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 5: Negando tudo que começa com caracteres MAIÚSCULOS E MINÚSCULOS. ls [^A-Za-z]*.*???"
exa [^A-Za-z]*.*???

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 6: Negando tudo que começa com NUMEROS. ls [^0-9]*.*???"
exa [^0-9]*.*???

echo -e "\n--------------------------------------------------------------------------"
echo -e "\nexemplo 7: Negando tudo que começa com NUMEROS e nome com 1 CARACTER. ls [^0-9].*???"
exa [^0-9].*???

