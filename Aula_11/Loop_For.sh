#!/usr/bin/env bash
#
#
echo -e "\n---------------------------------------------------------"
echo -e "\n# Testando o Loop FOR\n"

echo -e "--- ESTRUTURA: \n"

echo "for VARIAVEL in \"NOME1\" \"NOME2\" \"NOME3\" \"NOME4\" \"NOME5\"; do"
echo "   BLOCO DE COMANDOS"
echo "done"

echo -e "\n---------------------------------------------------------"

echo -e "\n# LISTA DE FRUTAS COM FOR\n"
for fruta in "Tomate" "Jaca" "Pêra" "Laranja" "Melancia"; do
    echo "Lista de frutas caras: $fruta"
done

echo -e "\n---------------------------------------------------------"

echo -e "\n# LISTA DE NUMEROS COM FOR\n"
for numeros in 1 2 3 4 5 6 7 8 9 10 ; do
    echo "O numero é: $numeros"
done

echo -e "\n---------------------------------------------------------"

echo -e "\n# OUTRA FORMA DE LISTAR DE NUMEROS COM FOR\n"
for numeros in {0..5} ; do
    echo "O numero é: $numeros"
done

echo -e "\n---------------------------------------------------------"

echo -e "\n# OUTRA FORMA DE LISTAR DE NUMEROS COM FOR PULANDO DE 2 em 2\n"
for numeros in {0..20..2} ; do
    echo "O numero é: $numeros"
done

echo -e "\n---------------------------------------------------------"

echo -e "\n# LISTANDO COM FOR com um ARQUIVO EXTERNO lista.txt\n"
for fruta in "$(cat lista.txt)"; do
    echo "As frutas são: $fruta"
done
