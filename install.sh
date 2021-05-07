#!/bin/bash

########################################################################
# INSTALLATION SCRIPT 
# FOR DOTFILES
########################################################################

BASEDIR=~/.dotfiles

#================================================
# VIM
#------------------------------------------------
ln -s ${BASEDIR}/vim/.vimrc ~/.vimrc

VIM_PLUGS_DEST=~/.vim/plugged
mkdir ${VIM_PLUGS_DEST}
ln -s ${BASEDIR}/vim/plugins ${VIM_PLUGS_DEST}

#================================================
# GIT
#------------------------------------------------
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

#================================================
# ALACRITTY
#------------------------------------------------
ALACRITTY_CONFIG_FILE=~/.config/alacritty/alacritty.yml
rm -f ${ALACRITTY_CONFIG_FILE}
ln -s ${BASEDIR}/.config/alacritty/alacritty.yml ${ALACRITTY_CONFIG_FILE}
touch ~/.config/alacritty/theme.yml

#================================================
# SWAY
#------------------------------------------------
ln -s ${BASEDIR}/sway/config ~/.config/sway/config
