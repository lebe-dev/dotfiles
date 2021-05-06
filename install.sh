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
# SWAY
#------------------------------------------------
ln -s ${BASEDIR}/sway/config ~/.config/sway/config
