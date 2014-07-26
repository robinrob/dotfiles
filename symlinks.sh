#!/bin/sh

source colors.sh

DIR=`pwd`                  									
OLD_DIR=/tmp/dotfiles             							
FILES="yadr bashrc zshrc zsh.prompts vimrc gvimrc tm_properties gitconfig"

yellow "Creating $OLD_DIR for backup of any existing dotfiles in ~ ..."
rm -rf $OLD_DIR
mkdir -p $OLD_DIR

yellow "Moving any existing dotfiles from ~ to $OLD_DIR ..."
for file in $FILES; do
	blue "$file moved to $OLD_DIR"
    mv ~/.$file $OLD_DIR/
done

yellow "Sym-linking files to home directory ..."
for file in $FILES; do
    blue "$file sym-linked to $HOME/$file"
    ln -s $DIR/$file ~/.$file
done