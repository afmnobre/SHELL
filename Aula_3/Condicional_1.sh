#!/usr/bin/env bash
#
#
#
#
# STATUS de SAIDA = resultado do teste da execução de uma instrução:
# 0 = Executou com sucesso!
# 1-256 = Aconteceu alguma errada.
#
## OPERADORES DE STRING (Fazem validação da String)
#
#  =  (IGUAL)
#  != (DIFERENTE)
#  -n (NÃO NULO)
#  -z (NULO)
#
#
echo -e "\n\n MOSTRANDO COMO FUNCIONA O STATUS DE SAIDA\n"

echo "-----------------------------------"
echo "Testando se Jefferson = (IGUAL) Jefferson:"
test "Jefferson" = "Jefferson"
echo -e "$? \n"
echo "-----------------------------------"
echo "Testando se Jefferson = (IGUAL) Paula:"
test "Jeffeson" = "Paula"
echo -e "$? \n"

echo "-----------------------------------"
echo "Testando se Jefferson != (DIFERENTE) Jefferson:"
test "Jefferson" != "Jefferson"
echo -e "$? \n"
echo "-----------------------------------"
echo "Testando se Jefferson != (DIFERENTE) Paula:"
test "Jeffeson" != "Paula"
echo -e "$? \n"

echo "############### VERIFICANDO SE VARIAVEL É NULA OU NÃO #################"
echo "-----------------------------------------------------------------------"

echo "COM \$var=''"
echo "-----------------------------------------------------------------------"
echo "Verifica se a variavel é NÃO NULA:  \$var e usei o -n (Não Nulo)"
var=""
test -n "$var"
echo -e "Resultado = $? Errado para Não Nulo\n"

echo "Verifica se a varival é NULA: \$var e usei o -z (Nulo)"
test -z "$var"
echo -e "Resultado = $? Certo para Nulo\n"

echo "-----------------------------------------------------------------------"

echo "COM \$var='Lucas'"
echo "-----------------------------------------------------------------------"
echo "Verifica se a variavel é NÃO NULA:  \$var e usei o -n (Não Nulo)"
var="Lucas"
test -n "$var"
echo -e "Resultado = $? Certo para Não Nulo\n"

echo "Verifica se a varival é NULA: \$var e usei o -z (Nulo)"
test -z "$var"
echo -e "Resultado = $? Errado para Nulo\n"

