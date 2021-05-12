#!/bin/bash

########################################################################
# INSTALLATION SCRIPT 
# FOR DOTFILES
########################################################################

BASEDIR=~/.dotfiles

#================================================
# .BASHRC
#------------------------------------------------
BASHRC_FILE=~/.bashrc
rm -f ${BASHRC_FILE}
ln -fs ${BASEDIR}/.bashrc ${BASHRC_FILE}
source ${BASHRC_FILE}

#================================================
# VIM
#------------------------------------------------
ln -fs ${BASEDIR}/vim/.vimrc ~/.vimrc

VIM_PLUGS_DEST=~/.vim/plugged
mkdir ${VIM_PLUGS_DEST}
ln -fs ${BASEDIR}/vim/plugins ${VIM_PLUGS_DEST}

#================================================
# GIT
#------------------------------------------------
ln -fs ${BASEDIR}/.gitconfig ~/.gitconfig
