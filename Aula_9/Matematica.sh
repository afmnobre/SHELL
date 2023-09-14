#!/usr/bin/env bash
#
#
#

echo -e "\nOPERADORES DE ARITMÉTICA:\n"

echo "  +  : Adição."
echo "  -  : Subtração."
echo "  *  : Multiplicação."
echo "  /  : Divisão."
echo "  %  : Módulo."
echo "  ** : Exponenciação."

echo -e "\nOPERADORES RELACIONAIS:\n"

echo "  ==  : Igual."
echo "  !-  : Diferente."
echo "  >   : Maior."
echo "  >=  : Maior ou Igual."
echo "  <   : Menor."
echo "  <=  : Menor ou Igual."

echo -e "\nOPERADORES DE ATRIBUIÇÃO:\n"

echo "  =   : Atribui valor a variavel."
echo "  +=  : Incrementa a variavel por uma constante."
echo "  -=  : Decrementa variavel por uma constante."
echo "  ++  : Faz incremento em 1."
echo "  --  : Decrementa o valor em 1."
echo "  %=  : Resto da Divisão por uma constante."
echo "  *=  : Multiplica variavel por uma constante."

echo -e "\n------------------------------------------------------------------------"

echo -e "\nPARA EXECUTAR AS FUNÇÕES ARITMÉTICAS, PRECISA USAR O COMANDO expr.
*Somente se usa NUMEROS INTEIROS.\n"

echo "EXEMPLO_1:"
echo "expr 1 + 1"
expr 1 + 1

echo "EXEMPLO_2:"
echo "expr 1 - 1"
expr 1 - 1


echo -e "\nPARA EXECUTAR AS FUNÇÕES ARITMÉTICAS, PRECISA USAR O COMANDO bc.
*Pode se usar com decimais.\n"

echo "EXEMPLO_1:"
echo 'bc <<< "squale=2 ; 3 + 58"'
bc <<< "squale ; 3 + 58"

echo "EXEMPLO_2:"
echo 'bc <<< "Squale=2 ; 2.1 + 3.2"'
bc <<< "squale=2 ; 2.1 + 3.2"

