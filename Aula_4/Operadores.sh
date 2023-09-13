#!/usr/bin/env bash
#
#
#

echo -e "\n##### OPERADORES DE COMPARAÇÃO ##### \n"

echo -e " -lt : LESSTHAN     ou MENOR QUE\n"
echo -e " -le : LESSEQUAL    ou MENOR IGUAL\n"
echo -e " -gt : GREATERTHEN  ou MAIOR QUE\n"
echo -e " -ge : GREATEREQUAL ou MAIOR IGUAL\n"
echo -e " -eq : EQUAL        ou IGUAL\n"
echo -e " -ne : NOTEQUAL     ou NÃO IGUAL\n"


echo -e "\n##### EXEMPLOS DE COMPARAÇÃO ####### \n"

read -p "Digite o Primeiro Numero: " num1
read -p "Digite o Segundo Numero:  " num2


echo "---------------------------------------------------------"
echo -e "$num1 é MENOR QUE $num2?"
[[ $num1 -lt $num2 ]] && echo -e "O $num1 é menor que o $num2\n" || echo -e "Falso!\n"

echo "---------------------------------------------------------"
echo -e "$num1 é MENOR ou IGUAL a $num2?"
[[ $num1 -le $num2 ]] && echo -e "O $num1 é menor ou gual ao $num2\n" || echo -e "Falso!\n"


echo "---------------------------------------------------------"
echo -e "$num1 é MAIOR QUE $num2?"
[[ $num1 -gt $num2 ]] && echo -e "O $num1 é maior que $num2\n" || echo -e "Falso!\n"


echo "---------------------------------------------------------"
echo -e "$num1 é MAIOR ou IGUAL a $num2?"
[[ $num1 -ge $num2 ]] && echo -e "O $num1 é maior ou igual ao $num2\n" || echo -e "Falso!\n"


echo "---------------------------------------------------------"
echo -e "$num1 é IGUAL a $num2?"
[[ $num1 -eq $num2 ]] && echo -e "O $num1 é IGUAL ao $num2\n" || echo -e "Falso!\n"


echo "---------------------------------------------------------"
echo -e "$num1 NÃO é IGUAL/DIFERENTE de $num2?"
[[ $num1 -ne $num2 ]] && echo -e "O $num1 é NÃO IGUAL/DIFERENTE do $num2\n" || echo -e "Falso!\n"






