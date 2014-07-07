#!/bin/sh
source colors.sh

green "Installing YADR ..."
./yadr.sh

green "Configuring files ..."
./config.sh

default "Done."