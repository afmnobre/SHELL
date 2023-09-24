#!/usr/bin/env bash
#
# PROGRAMA DE ATUALIZAÇÃO DE SCRIPTS
#
# 1 - ELE CRIA DOIS ARQUIVOS COM NOMES DIFERENTES E CONTEUDOS DIFERENTES.
# 2 - ELE FAZ UM ARQUIVO COM A DIFERENÇA ENTRE OS ARQUIVOS
# 3 - ELE ATUALIZA O ARQUIVO ORIGINAL COM O ARQUIVO DE DIFERENÇA ENTRE OS DOIS.
#
clear
echo -e "\n##########################################################################\n"
read -p "REMOVER ARQUIVOS ANTERIORES? [S/N]: " remover
if $remover = "S"; then
    rm Arquivo_1.txt;
    rm Arquivo_2.txt;
    rm Atualizacao.patch;
fi

echo -e "\n# APRENDENDO SOBRE O COMANDO DIFF\n"
echo -e "Foi criado dois arquivos: Arquivo_1.txt e Arquivo_2.txt para diferencia-los.\n"

[[ ! $(bat Arquivo_1.txt) ]] && { touch Arquivo_1.txt; }
[[ ! $(bat Arquivo_2.txt) ]] && { touch Arquivo_2.txt; }

echo "
========================
Ola Meu Nome é:
Minha Idade é:
Meu Animal favorito é:
" > Arquivo_1.txt

echo "
================================
Ola Meu Nome é: Lucas
Minha Idade é: 36
Meu Animal favorito é: Cachorro
E estou aprendendo sobre SHELL
=================================
" > Arquivo_2.txt

echo "----------------------------------------------------------------------------------
Comparando arquivos:

    diff Arquivo_1.txt Arquivo_2.txt

Resultado:"
diff Arquivo_1.txt Arquivo_2.txt

echo "---------------------------------------------------------------------------------
Criando Arquivo com as diferenças entre os arquivos, PATCH

    diff Arquivo_1.txt Arquivo_2.txt > dialog.patch

Resultado:"
diff Arquivo_1.txt Arquivo_2.txt > Atualizacao.patch
bat Atualizacao.patch

echo "--------------------------------------------------------------------------------
Aplicando o PATCH no arquivo Principal Arquivo_Atualizado.txt (que é uma cópia o Arquivo_1.txt).

    patch Arquivo_Atualizado.txt dialog.patch

Resultado:"
cp Arquivo_1.txt Arquivo_Atualizado.txt
patch Arquivo_Atualizado.txt Atualizacao.patch

bat Arquivo_Atualizado.txt

echo "--------------------------------------------------------------------------------
Verificando a diferença do Arquivo_1.txt para o Arquivo_Atualizado.txt

    diff Arquivo_1.txt Arquivo_Atualizado.txt

Resultado:"
diff Arquivo_1.txt Arquivo_Atualizado.txt
