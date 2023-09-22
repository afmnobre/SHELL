#!/usr/bin/env bash
#
clear
echo -e "\nEXPANSÃO DE STRINGS\n"
echo "--------------------------------------------------------------------------------------"

echo -e "# CREI UMA VARIAVEL COM O CONTEUDO: LUCAS NOBRE FERREIRA MARTINS\n"
VARIAVEL="LUCAS NOBRE FERREIRA MARTINS"
echo "______________________________________________________________________________________"

echo "PARA RETORNAR A QUANTIDADE DE CARACTERES USE #"
echo "${#VARIAVEL}"
echo "______________________________________________________________________________________"

echo -e "\n#CORTAR STRINGS COMEÇANDO DO INICIO DA STRING"
echo "${VARIAVEL#LUCAS }"
echo "______________________________________________________________________________________"

echo -e "\n#CORTAR CARACTERES PELO PARAMETRO DETERMINADO NA STRING STRING"
echo "${VARIAVEL:3}"
echo "_____________________________________________________________________________________"

echo -e "\n#CORTAR CARACTERES PELOS PARAMETRO DETERMINADO NA STRING STRING"
echo "${VARIAVEL:6:5}"
echo "_____________________________________________________________________________________"

echo -e "\n#SUBSTITUIR A PRIMEIRA OCORRENCIA PELOS PARAMETRO DETERMINADO NA STRING STRING"
echo "${VARIAVEL/LUCAS/DANIEL}"
echo "_____________________________________________________________________________________"

echo -e "\n#SUBSTITUIR TODAS AS OCORRENCIA PELOS PARAMETRO DETERMINADO NA STRING STRING"
echo "${VARIAVEL//R/L}"
echo "_____________________________________________________________________________________"

echo -e "\n#ALTERANDO A PRIMEIRA OCORRENCIA ENCONTRADA NUMA STRING"
echo "${VARIAVEL/#LUCAS/MATHEUS}"
echo "_____________________________________________________________________________________"

echo -e "\n#ALTERANDO A ULTIMA OCORRENCIA ENCONTRADA NUMA STRING."
echo "${VARIAVEL/%MARTINS/LIMA}"
echo "_____________________________________________________________________________________"

echo -e "\n#ELIMINAR CARACTERES DE ACORDO COM DOIS PARAMETROS A PARTIR DO COMEÇO."
echo "${VARIAVEL##LUCAS*FERREIRA }"
echo "_____________________________________________________________________________________"

STRING="1 2 3 4 5 6 7 8 9 10"

echo -e "\n#ELIMINAR CARACTERES DE ACORDO COM DOIS PARAMETROS A PARTIR DO FINAL."
echo "${STRING%%8*10}"


