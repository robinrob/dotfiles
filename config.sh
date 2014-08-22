#!/usr/bin/env sh

source colors.sh

./symlinks.sh

./jetbrains.sh

green "Installing crontab ..."
crontab crontab.cron

green "Installing Robin's custom keyboard layout ..."
cp Robin.keylayout ~/Library/Keyboard\ Layouts/

green "Installing sudoers file ..."
# Make sure that the file has correct permissions first!
sudo chmod 440 sudoers
sudo chown root:wheel sudoers
sudo cp sudoers /etc/sudoers
sudo chmod 444 sudoers

red "Removing folder ~/.vim"
sudo rm -rf ~/.vim