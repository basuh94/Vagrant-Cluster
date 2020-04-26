#!/bin/bash

#Locales
apt-get install -y language-pack-es
localectl set-locale LANG=es_ES.utf8

#Actualizar
apt-get update && apt-get -y upgrade

#Instalar paquetes básicos
apt-get install htop git curl tmux zsh