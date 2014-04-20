# First-time stuff!
###############################################################################

rvm get 1.21.15


# OS-Specific stuff
###############################################################################

# OS X
######
defaults write com.apple.Finder AppleShowAllFiles NO
defaults write com.apple.screencapture location $HOME/temp/screenshots/
defaults write -g ApplePersistence -bool no
chflags nohidden ~/Library/


# Ubuntu
########

# ZSH setup
###############################################################################

# YADR stuff
############
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

prompt robin


# Command-line editing mode
###########################
set -o vi


# Syntax highlighing in `less`
##############################
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'


# Environment variables
###############################################################################

# Path
######
PATH=$PATH:$EC2_HOME/bin
PATH=$PATH:$HOME/.rvm/bin


# Other environment variables
#############################

export EDITOR="/usr/local/bin/mate -w"

export PROG_HOME=$HOME/Documents/programming

export SH_HOME=$PROG_HOME/sh

export PYTHON_HOME=$PROG_HOME/python

export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export FABFILE_HOME=$PY_HOME/projects/fabfile

export ZSH_HOME=$PROG_HOME/zsh

export SH_HOME=$PROG_HOME/sh

export DOTFILES_HOME=$ZSH_HOME/dotfiles

export ZSHRC=$DOTFILES_HOME/zshrc

export RUBY_HOME=$PROG_HOME/ruby

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

export RAKEFILE_HOME=$RUBY_HOME/projects/rakefile

export IMPORTANT_HOME=$HOME"/Google Drive/IMPORTANT"

export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export JAVA_HOME=$(/usr/libexec/java_home)

export PERL_HOME=$PROG_HOME/perl

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export GAM_PATH=/usr/local/Library/gam3


# Dev tools
###############################################################################

# Python
########
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

pythonbrew use 2.7


# Ruby
######
# [[ -s "$HOME/rvm get stable --auto-dotfiles" ]] && source "$HOME/.rvm/scripts/rvm" 
# Load RVM into a shell session *as a function*

# rvm use ruby-2.1.1