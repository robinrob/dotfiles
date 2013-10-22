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

# fgrep -i hist ~/.zshenv|sort
# HISTFILE=$HOME/.zhistory
# HISTSIZE=SAVEHIST=99999
# setopt APPEND_HISTORY
# setopt HIST_EXPIRE_DUPS_FIRST
# setopt HIST_FCNTL_LOCK
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_IGNORE_DUPS
# setopt HIST_IGNORE_SPACE
# setopt HIST_NO_STORE
# setopt HIST_SAVE_NO_DUPS
# setopt HIST_VERIFY
# setopt INC_APPEND_HISTORY
# 
# source $HOME/dotfiles/zsh-history-substring-search/zsh-history-substring-search.zsh

prompt robin

export PROG_HOME=/Users/msl/Documents/programming

export SH_HOME=$PROG_HOME/sh

export PYTHON_HOME=$PROG_HOME/python
export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export DOTFILES_HOME=~/dotfiles
