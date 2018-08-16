#!/usr/bin/env zsh

source dotfiles-base/zsh/colors.zsh

green "Installing YADR ..."
./install_yadr.zsh

green "Installing Robin ..."
./install_robin.zsh
