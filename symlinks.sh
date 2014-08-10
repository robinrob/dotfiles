#!/bin/sh

source colors.sh
source indents.sh

green "Sym-linking dotfiles ..."

DIR=`pwd`                  									
OLD_DIR=/tmp/dotfiles             							
FILES="yadr bashrc zshrc zsh.prompts vimrc gvimrc tm_properties gitconfig"

yellow "\t${ITEM}Creating $OLD_DIR for backup of any existing dotfiles in ~ ..."
rm -rf $OLD_DIR
mkdir -p $OLD_DIR

yellow "\t${ITEM}Moving any existing dotfiles from ~ to $OLD_DIR ..."
for file in $FILES; do
	blue "\t\t$ITEM$file moved to $OLD_DIR"
    mv ~/.$file $OLD_DIR/
done

yellow "\t${ITEM}Sym-linking files to home directory ..."
for file in $FILES; do
    blue "\t\t${ITEM}$file sym-linked to $HOME/$file"
    ln -s $DIR/$file ~/.$file
done