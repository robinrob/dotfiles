DOTFILES_HOME=~/Programming/robin/zsh/projects/dotfiles
source $DOTFILES_HOME/colors.zsh

echo "$(white I)$(yellow " am ")$(cyan awesome)"

# Environment variables
#############################
source $DOTFILES_HOME/env_variables.zsh


# echo `eval "echo \`echo "$(white I)$(yellow " am ")$(cyan awesome)"\`"`

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



# Development
###############################################################################

# Ruby
######
# ruby="2.1.1"
# eval "rvm use ruby-"$ruby 1> /dev/null
# green "Using \`Ruby-$ruby\`"

if [[ "$HOSTNAME" == "$VENUS_HOSTNAME" ]]
then
	rvm gemset use chef --create
fi

# Python
########
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# pythonbrew use 3.2 2> /dev/null


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
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin/


# OS-Specific stuff
###############################################################################

# OS X
######
defaults write com.apple.Safari AlwaysShowTabBar -bool NO

defaults write com.apple.Finder AppleShowAllFiles NO 2> /dev/null

# http://www.tekrevue.com/tip/how-to-customize-screenshot-options-in-mac-os-x/
# killall SystemUIServer
defaults write com.apple.screencapture location $SCREENSHOTS_HOME 2> /dev/null
defaults write com.apple.screencapture name $HOSTNAME
# defaults write com.apple.screencapture type png

defaults write -g ApplePersistence -bool no 2> /dev/null
chflags nohidden ~/Library/ 2> /dev/null

# Speed at which Dock auto-hides
# defaults write com.apple.dock autohide-time-modifier -float 0.0


# Ubuntu
########