#!/usr/bin/env sh

RUBYMINE_CONFIG=~/Library/Preferences/RubyMine50/keymaps/Robin.xml
rm -rf $RUBYMINE_CONFIG
ln -s $DOTFILES_HOME/Jetbrains-Robin.xml $RUBYMINE_CONFIG

PYCHARM_CONFIG=~/Library/Preferences/PyCharm30/keymaps/Robin.xml
rm -rf $PYCHARM_CONFIG
ln -s $DOTFILES_HOME/Jetbrains-Robin.xml $PYCHARM_CONFIG
