#!/usr/bin/env sh

source colors.sh

green "Sym-linking dotfiles ..."
./symlinks.sh

green "Installing Jetbrains IDE config files ..."
./jetbrains.sh

green "Installing crontab ..."
crontab crontab.cron

green "Installing Robin's custom keyboard layout ..."
cp Robin.keylayout ~/Library/Keyboard\ Layouts/

red "Removing folder ~/.vim"
rm -rf ~/.vim