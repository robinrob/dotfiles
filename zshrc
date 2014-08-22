source ~/Programming/robin/dotfiles/colors.sh

# First-time stuff!
###############################################################################

# rvm get 1.21.15

# ln $SH_HOME/rubyapp /usr/local/bin/rubyapp

# gem install chef knife-windows knife-ec2 --no-ri --no-rdoc


# Fixes!
###############################################################################

# gem tool errors
#################
# brew unlink libyaml && brew link libyaml
# brew unlink openssl && brew link --force openssl


# ZSH setup
###############################################################################

# YADR stuff
############
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

prompt robin


# Shell options
###########################
unsetopt correct
setopt autocd
set -o vi


# Syntax highlighing in `less`
# Requires `brew install source-highlight`
##############################
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'


# Development
###############################################################################

# Ruby
######
rvm use ruby-2.0.0-p247 1> /dev/null
green "Using \`Ruby-2.0.0\`"

if [ "$HOSTNAME" = "venus.local" ]
then
	rvm gemset use chef --create
fi

# Python
########
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

pythonbrew use 2.7 2> /dev/null


# Environment variables
#############################

DOTFILES_HOME=~/Programming/robin/dotfiles
source $DOTFILES_HOME/env_variables.zsh


# Functions
###############################################################################

source $DOTFILES_HOME/functions.zsh


# Aliases
###############################################################################
source $DOTFILES_HOME/aliases.zsh


# Path
######
PATH=$PATH:$EC2_HOME/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$LOCAL_HOME/bin


# OS-Specific stuff
###############################################################################

# OS X
######
defaults write com.apple.Finder AppleShowAllFiles NO 2> /dev/null

# http://www.tekrevue.com/tip/how-to-customize-screenshot-options-in-mac-os-x/
# killall SystemUIServer
defaults write com.apple.screencapture location $SCREENSHOTS_HOME 2> /dev/null
defaults write com.apple.screencapture name $HOSTNAME
# defaults write com.apple.screencapture type png

defaults write -g ApplePersistence -bool no 2> /dev/null
chflags nohidden ~/Library/ 2> /dev/null


# Ubuntu
########


# Logic to source .zshrc exactly twice
# if [ -n `ls ~/.zsh_switch` ]
# then
# 	touch ~/.zsh_switch
# fi
#
#
# if [[ `cat ~/.zsh_switch` -eq 0 ]]
# then
# 	echo 1 >! ~/.zsh_switch
# 	source ~/.zshrc > /dev/null 2>&1;
#
# else
# 	echo 0 >! ~/.zsh_switch
# fi
