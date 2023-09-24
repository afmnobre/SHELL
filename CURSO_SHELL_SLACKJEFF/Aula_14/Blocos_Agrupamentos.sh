#!/usr/bin/env bash
#
#
clear
echo -e "\n# BLOCOS E AGRUPAMENTOS\n
 \" \"  : Protegem uma string, e reconhece tudo.
 ' '  : Protegem uma string, e nada é especial e reconhecido.
$' '  : Protegem uma string, mas interpreta \\\\n \\\\t \\\\a
 \` \`  : Executa comandos em uma subshell.
\$( )  : Executa comandos em uma subshell, retornando o resultado.
 ( )  : Executa comando de uma subshell.
 { }  : Agrupa comandos em Bloco.
(())  : Testa uma operação Aritmética e retorna o status.
\$(()) : Retorna o resultado da operação Aritmética
 [ ]  : Testa uma operação, e retorna 0 ou 1 (NICK do TEST)
[[]]  : Testa uma expressão, retorna 0 ou 1 ( Podendo usar && ou || )
"

echo -e "\n# EXEMPLO DE MODIFICAÇÃO read COM $' '\n"
read -p $'\033[31;1mDigite seu CPF: \033[m' cpf

echo -e "\n# CORES NO SHELL:"

echo -e "\033[31;1mCor 31 \033[m"
echo -e "\033[32;1mCor 32 \033[m"
echo -e "\033[33;1mCor 33 \033[m"
echo -e "\033[34;1mCor 34 \033[m"
echo -e "\033[35;1mCor 35 \033[m"
echo -e "\033[36;1mCor 36 \033[m"
echo -e "\033[37;1mCor 37 \033[m"
echo -e "\033[38;1mCor 38 \033[m"

echo -e "\033[31mCor 31 sem 1m \033[m"
echo -e "\033[32mCor 32 sem 1m\033[m"
echo -e "\033[33mCor 33 sem 1m\033[m"
echo -e "\033[34mCor 34 sem 1m\033[m"
echo -e "\033[35mCor 35 sem 1m\033[m"
echo -e "\033[36mCor 36 sem 1m\033[m"
echo -e "\033[37mCor 37 sem 1m\033[m"
echo -e "\033[38mCor 38 sem 1m\033[m"

