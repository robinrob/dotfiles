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

export PROG_HOME=$HOME/Documents/programming

export SH_HOME=$PROG_HOME/sh

export PYTHON_HOME=$PROG_HOME/python
export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export ZSH_HOME=$PROG_HOME/zsh

export DOTFILES_HOME=$ZSH_HOME/dotfiles

export ZSHRC=$DOTFILES_HOME/zshrc

export RUBY_HOME=$PROG_HOME/ruby

export RUBYAPP_HOME=$PROG_HOME/ruby/projects/ruby-app

export IMPORTANT_HOME=$HOME"/Google Drive/IMPORTANT"

export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export JAVA_HOME=$(/usr/libexec/java_home)

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export PATH=$PATH:$EC2_HOME/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

set -o vi
