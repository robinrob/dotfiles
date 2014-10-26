#!/usr/bin/env zsh

source colors.zsh
source indents.zsh
source dotfiles.zsh

DIR=`pwd`                  									
OLD_DIR=/tmp/dotfiles             							
FILES=`dot_files`
FILES=(${(s: :)FILES})

green "Sym-linking dotfiles ..."

./uninstall.zsh

yellow "\t${ITEM}Sym-linking files to home directory ..."
for file in $FILES; do
    cyan "\t\t${ITEM}$file sym-linked to $HOME/$file"
    ln -s $DIR/$file ~/.$file
done
