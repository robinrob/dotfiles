#!/usr/bin/env sh

source colors.sh
source indents.sh

green "Installing Jetbrains IDE config files ..."

yellow "\t${ITEM}Installing RubyMine config ..."
rm -rf $RUBYMINE_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $RUBYMINE_CONFIG

yellow "\t${ITEM}Installing PyCharm config ..."
rm -rf $PYCHARM_CONFIG
cp $DOTFILES_HOME/Jetbrains-Robin.xml $PYCHARM_CONFIG