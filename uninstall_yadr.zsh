#!/usr/bin/env zsh

source dotfiles-base/zsh/colors.zsh

[[ $fpath = *dotfiles-base* ]] || fpath=(dotfiles-base/zsh/functions $fpath)
autoload -U +X $fpath[1]/*(:t) 2> /dev/null

trash ~/.yadr
