#!/bin/sh

source colors.sh

DIR=`pwd`                  									
OLD_DIR=/tmp/dotfiles             							
FILES="yadr bashrc zshrc zsh.prompts vimrc tm_properties"


# Create dotfiles_old in homedir
green "Creating $OLD_DIR for backup of any existing dotfiles in ~"
rm -rf $OLD_DIR
mkdir -p $OLD_DIR
green "...done"

# Change to the dotfiles directory
green "Changing to the $DIR directory"
cd $DIR
green "...done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $FILES; do
    green "Moving any existing dotfiles from ~ to $OLD_DIR"
    mv ~/.$file $OLD_DIR/
    green "Creating symlink to $file in home directory."
    ln -s $DIR/$file ~/.$file
done

cd yadr
sh install.sh
rake update

# Setup other stuff that can't be symlinked
./setup.sh