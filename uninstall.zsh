#!/usr/bin/env zsh

source dotfiles-base/zsh/colors.zsh

cd dotfiles-base/zsh
./uninstall.zsh

red "Moving .yadr to $TRASH_HOME ..."
mv ~/.yadr $TRASH_HOME
# Remove symlink to ~/.yadr too
rm -f ~/.framework