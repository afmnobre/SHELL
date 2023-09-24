#!/usr/bin/env bash


cat <<<"
HERE STRING AQUI = cat <<<
Texto 1 : estou digitando e inserindo!
Texto 2 : estou digitando e inserindo!
Texto 3 : estou digitando e inserindo!
Texto 4 : estou digitando e inserindo!
Texto 5 : estou digitando e inserindo!
"


echo "LENDO ARQUIVO COM cat frutas.txt"
cat frutas.txt

echo -e "\n# ECHO LENDO O ARQUIVO frutas.txt E ORDENA EM ORDEM ALFABETICA COM sort"
cat frutas.txt | sort

echo -e "\n# CRIANDO ARQUIVO ORDENADO EM ORDEM ALFABETICA COM BASE NO ARQUIVO frutas.txt"
cat frutas.txt | sort > OrdemAlfabetica.txt
echo "-- cat no arquivo OrdemAlfabetica.txt"
cat OrdemAlfabetica.txt
