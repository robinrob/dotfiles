#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

export PATH=/Library/Frameworks/Python.framework/Versions/3.4/bin:$PATH

export EDITOR="/usr/local/bin/mate -w"

[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

pythonbrew use 2.7

chflags nohidden ~/Library/

defaults write com.apple.Finder AppleShowAllFiles YES

prompt robin

unsetopt correct

alias chrome="Google\ Chrome"