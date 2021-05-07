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
ln -s ${BASEDIR}/alacritty/alacritty.yml ${ALACRITTY_CONFIG_FILE}
touch ~/.config/alacritty/theme.yml

#================================================
# SWAY
#------------------------------------------------
ln -s ${BASEDIR}/sway/config ~/.config/sway/config

#================================================
# WAYBAR
#------------------------------------------------
OPENVPN_STATUS_SCRIPT=openvpn-waybar-status.sh
rm -f ~/bin/${OPENVPN_STATUS_SCRIPT}
ln -s ${BASEDIR}/bin/${OPENVPN_STATUS_SCRIPT} ~/bin/${OPENVPN_STATUS_SCRIPT}

OPENVPN_TOGGLE_SCRIPT=openvpn-waybar-toggle.sh
rm -f ~/bin/${OPENVPN_TOGGLE_SCRIPT}
ln -s ${BASEDIR}/bin/${OPENVPN_TOGGLE_SCRIPT} ~/bin/${OPENVPN_TOGGLE_SCRIPT}

#================================================
# TODO.TXT
#------------------------------------------------
TODAY_SCRIPT=~/bin/today.sh
rm -f ${TODAY_SCRIPT}
ln -s ${BASEDIR}/bin/today.sh ${TODAY_SCRIPT}
chmod +x ${TODAY_SCRIPT}
