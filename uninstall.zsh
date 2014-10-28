#!/usr/bin/env zsh

source dotfiles-base/zsh/colors.zsh

cd dotfiles-base/zsh
./uninstall.zsh

red "Removing Yadr ..."
rm -f ~/.framework
rm -rf ~/.yadr