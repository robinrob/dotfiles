#!/usr/bin/env sh

source colors.sh

yellow "Installing RubyMine config ..."
rm -rf $RUBYMINE_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $RUBYMINE_CONFIG

yellow "Installing PyCharm config ..."
rm -rf $PYCHARM_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $PYCHARM_CONFIG