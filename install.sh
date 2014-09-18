#!/bin/sh
source colors.zsh

# green "Installing YADR ..."
# ./yadr.sh
git submodule update --init --recursive

green "Configuring files ..."
./files.sh

default "Done."