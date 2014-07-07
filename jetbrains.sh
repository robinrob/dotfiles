#!/usr/bin/env sh

source colors.sh

yellow "Installing RubyMine config ..."
RUBYMINE_CONFIG=~/Library/Preferences/RubyMine60/keymaps/Robin.xml
rm -rf $RUBYMINE_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $RUBYMINE_CONFIG

yellow "Installing PyCharm config ..."
PYCHARM_CONFIG=~/Library/Preferences/PyCharm30/keymaps/Robin.xml
rm -rf $PYCHARM_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $PYCHARM_CONFIG