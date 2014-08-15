#!/usr/bin/env sh

source colors.sh
source indents.sh

function install() {
	yellow "\t${ITEM}Installing $1 config ..."
	rm -rf $2
	cp $DOTFILES_HOME/Jetbrains-Robin.xml $2
}

green "Installing Jetbrains IDE config files ..."

install RubyMine $RUBYMINE_CONFIG

install PyCharm $PYCHARM_CONFIG

install WebStorm $WEBSTORM_CONFIG