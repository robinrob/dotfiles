#!/usr/bin/env zsh

source colors.zsh
source dotfiles.zsh

FILES=`dot_files`
FILES=(${(s: :)FILES})

OLD_DIR=/tmp/dotfiles             							

yellow "\t${ITEM}Creating $OLD_DIR for backup of any existing dotfiles in ~ ..."
rm -rf $OLD_DIR
mkdir -p $OLD_DIR

yellow "\t${ITEM}Moving any existing dotfiles from ~ to $OLD_DIR ..."
for file in $FILES; do
	cyan "\t\t$ITEM$file moved to $OLD_DIR"
  mv ~/.$file $OLD_DIR/ 2> /dev/null
done

brightwhite 'Done.'
