#!/usr/bin/env bash
#
#
#

echo -e "\n---------------------------------------------------------------------\n"

echo -e " -d : VERIFICA SE O DIRETÓRIO EXISTE.\n"
echo -e " -e : VERIFICA SE O ARQUIVO EXISTE.\n"
echo -e " -r : VERIFICA SE O ARQUIVO TEM PERMISSÃO DE LEITURA.\n"
echo -e " -w : VERIFICA SE O ARQUIVO TEM PERMISSÃO DE ESCRITA.\n"
echo -e " -x : VERIFICA SE O ARQUIVO TEM PERMISSÃO DE EXECUÇÃO.\n"
echo -e " -L : VERIFICA SE O ARQUIVO É UM LINK SIMBOLICO.\n"
echo -e " -O : VERIFICA SE O DONO DO ARQUIVO É O USUARIO LOGADO ATUALMENTE.\n"
echo -e " -f : VERIFICA SE O ARQUIVO É NORMAL.\n"

echo -e " -ot : VERIFICA SE O ARQUIVO É MAIS ANTIGO QUE OUTRO.\n"
echo -e " -nt : VERIFICA SE O ARQUIVO É MAIS NOVO QUE OUTRO.\n"



echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Diretório MUSIC esta dentro do Diretório do usuario $USER"
[[ -d "/home/$USER/Music" ]] && echo "Diretório Existe" || echo "Não Existe"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh esta dentro do Diretório $PWD"
[[ -e "$PWD/Operadores.sh" ]] && echo "Arquivo Existe" || echo "Não Existe"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh tem permissão de LEITURA no Diretório $PWD"
[[ -r "$PWD/Operadores.sh" ]] && echo "Arquivo tem permissão de leitura!" || echo "Não tem permissão de leitura!"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh tem permissão de ESCRITA no Diretório $PWD"
[[ -w "$PWD/Operadores.sh" ]] && echo "Arquivo tem permissão de escrita!" || echo "Não tem permissão de escrita!"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh tem permissão de EXECUÇÃO no Diretório $PWD"
[[ -x "$PWD/Operadores.sh" ]] && echo "Arquivo tem permissão de execução!" || echo "Não tem permissão de execução!"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh é mais ANTIGO que o arquivo Test_Variacoes.sh no Diretório $PWD"
[[ "$PWD/Operadores.sh" -ot "$PWD/Test_Variacoes.sh" ]] && echo "Arquivo mais ANTIGO!" || echo "Não é mais ANTIGO!"

echo -e "\n---------------------------------------------------------------------\n"

echo "Verificando se o Arquivo Operadores.sh é mais NOVO que o arquivo Test_Variacoes.sh no Diretório $PWD"
[[ "$PWD/Operadores.sh" -nt "$PWD/Test_Variacoes.sh" ]] && echo "Arquivo mais NOVO!" || echo "Não é mais NOVO!"
