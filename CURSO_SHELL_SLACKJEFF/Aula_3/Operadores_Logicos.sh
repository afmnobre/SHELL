#!/usr/bin/env bash
#
#
#
#
#
#
# && = AND
#
#
#
echo "################################################"
echo "Operador Logico && = AND"
echo "Executando o LS e PWD juntos"
echo "--------------------------------"
ls && pwd

echo -e "################################################\n"
echo "Operador Logico || = OU"
echo "Lucas é Igual a Matheus? com OU"
echo "--------------------------------"
test "Lucas" = "Matheus" || echo "Não, Lucas não é igual a Matheus"

echo -e "\n################################################\n"
echo "Operador Logico && = OU"
echo "Lucas é Igual a Matheus? com AND"
echo "--------------------------------"
test "Lucas" = "Matheus" && echo "Não, Lucas não é igual a Matheus"

echo -e "\n################################################\n"

echo -e "Fazendo uma verificação com AND e OU ao mesmo tempo\n"
echo -e "Comparando dois nomes e de acordo com a SAIDA PADRÃO 0 ou 1 ele vai identificar TRUE ou FALSE\n"

test "Jefferson" = "Kátia" && echo "Sim, os nomes são iguais" || echo "Não, os nomes são diferentes"

echo -e "\n################################################\n"

echo -e "Conferindo se uma variavel é Nula ou Não de acordo com AND e OR\n"
read -p "Qual o seu nome?   " nome
test -z "$nome" && echo "A variavel é Nula" || echo "A variavel NÃO é Nula"

