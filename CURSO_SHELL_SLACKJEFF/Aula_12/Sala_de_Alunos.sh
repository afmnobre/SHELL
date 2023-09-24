#!/usr/bin/env bash
#
#
echo -e "\nArray Comum:\n"

nome[0]="Francisco"
nome[1]="Jefferson"
nome[2]="Fernando"
nome[3]="Paulo"
nome[4]="Pietra"
nome[5]="Joaquim"
nome[6]="Pedro"

echo "Nome do aluno 1 = ${nome[0]}"
echo "Nome do aluno 2 = ${nome[1]}"
echo "Nome do aluno 3 = ${nome[2]}"
echo "Nome do aluno 4 = ${nome[3]}"
echo "Nome do aluno 5 = ${nome[4]}"
echo "Nome do aluno 6 = ${nome[5]}"
echo "Nome do aluno 7 = ${nome[6]}"

echo -e "\nArray com índice:\n"

nome=("Lucas" "Daniel" "Marta" "Adilson" "Matheus")

num="0"
while [[ $num -lt "5" ]]; do
    echo "O Membro da Família é: ${nome[$num]}"
    let num++
done





