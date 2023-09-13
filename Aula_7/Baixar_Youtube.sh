#!/usr/bin/env bash
#
#
#
#
#
#
# PROGRAMA PARA BAIXAR AUDIOS E VIDEOS DO YOUTUBE
#
#
#
# ----------- VARIAVEIS DO PROGRAMA -------------------------

# 64k 128k 256k 320k
qualidade="320k"
# BEST aac vorbis m4a opus wav
formato_audio="mp3"


# ----------- TESTE INICIAIS --------------------------------
[[ "$UID" -eq "0" ]] && { echo "Não pode estar Logado como ROOT!" exit 1 ;}


# ----------- INICIO DO PROGRAMA ----------------------------
#
youtube-dl --embed-thumbnail --audio-quality "$qualidade" --extract-audio "$formato_audio" "$@"
[[ $? -eq "1" ]] && { echo "ERRO NO PROGRAMA"; exit 1;}
