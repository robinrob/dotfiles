#!/usr/bin/env zsh

source dotfiles-base/zsh/colors.zsh


yellow "Initialising framework ..."
cd framework
git submodule update --init --recursive

green "Installing framework to .framework ..."
sh install.sh
ln -s ~/.yadr ~/.framework 2> /dev/null

cd dotfiles-base
./install.zsh
