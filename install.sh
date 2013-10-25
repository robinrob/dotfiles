#!/bin/sh
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

DIR=~/Documents/programming/zsh/dotfiles                    # dotfiles directory
OLDDIR=~/tmp/dotfiles             							# old dotfiles backup directory
FILES="zshrc yadr bashrc zshrc zsh.prompts tm_properties"   # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $OLDDIR for backup of any existing dotfiles in ~"
mkdir -p $OLDDIR
echo "...done"

# change to the dotfiles directory
echo "Changing to the $DIR directory"
cd $DIR
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $FILES; do
    echo "Moving any existing dotfiles from ~ to $OLDDIR"
    mv ~/.$file $OLD_DIR/
    echo "Creating symlink to $file in home directory."
    ln -s $DIR/$file ~/.$file
done

cd yadr
sh install.sh