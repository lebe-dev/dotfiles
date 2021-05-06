#!/bin/bash

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
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

#================================================
# SWAY
#------------------------------------------------
ln -s ${BASEDIR}/sway/config ~/.config/sway/config

#------------------------------------------------
# WAYBAR
#------------------------------------------------
ln -s ${BASEDIR}/waybar/config ~/.config/waybar/config