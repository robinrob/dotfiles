#!/bin/sh
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

DIR=`pwd`                  									# dotfiles directory
OLD_DIR=/tmp/dotfiles             							# old dotfiles backup directory
FILES="zshrc yadr bashrc zshrc zsh.prompts tm_properties"   # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $OLD_DIR for backup of any existing dotfiles in ~"
rm -rf $OLD_DIR
mkdir -p $OLD_DIR
echo "...done"

# change to the dotfiles directory
echo "Changing to the $DIR directory"
cd $DIR
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $FILES; do
    echo "Moving any existing dotfiles from ~ to $OLD_DIR"
    mv ~/.$file $OLD_DIR/
    echo "Creating symlink to $file in home directory."
    ln -s $DIR/$file ~/.$file
done

cd yadr
sh install.sh
