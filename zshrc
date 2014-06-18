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


# Command-line editing mode
###########################
set -o vi


# Syntax highlighing in `less`
##############################
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'


# Development
###############################################################################

# Ruby
######
rvm use ruby-2.0.0-p247 2> /dev/null
rvm gemset use chef --create 2> /dev/null

# Python
########
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

pythonbrew use 2.7 2> /dev/null


# Environment variables
#############################

# export EDITOR="/usr/local/bin/c -w"
export EDITOR="/usr/bin/vim"

export PROG_HOME=$HOME/Programming/robin

export DOCUMENTS_HOME="$HOME/Google Drive"

export SH_HOME=$PROG_HOME/sh

export PYTHON_HOME=$PROG_HOME/python

export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export FABFILE_HOME=$PY_HOME/projects/fabfile

export ZSH_HOME=$PROG_HOME/zsh

export SH_HOME=$PROG_HOME/sh

export DOTFILES_HOME=$PROG_HOME/dotfiles

export ZSHRC=$DOTFILES_HOME/zshrc

export RUBY_HOME=$PROG_HOME/ruby

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

export RAKEFILE_HOME=$RUBY_HOME/projects/rakefile

export GLOBAL_RAKEFILE_HOME=$RUBY_HOME/projects/global-rakefile

export QUIZ_HOME=$RUBY_HOME/projects/quiz

export MRROBINSMITHCOM_HOME=$RUBY_HOME/projects/mrrobinsmith.com

export REPOS=$RUBY_HOME" "$SH_HOME" "$DOTFILES_HOME" "$PYTHON_HOME

export IMPORTANT_HOME=$HOME"/Google Drive/IMPORTANT"

export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export PERL_HOME=$PROG_HOME/perl

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export GAM_PATH=/usr/local/Library/gam3

export WORK_HOME=~/Programming/work

export NOCCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef

export MSCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef

export SCREENSHOTS_HOME=$HOME/temp/screenshots

export LOCAL_HOME=$PROG_HOME/local


# Functions
###############################################################################

function get_card {
	cards | grep $1 | awk -F: '{print $2}' | pbcopy
}

function reminder {
	echo $1 | mail -s "REMINDER: $1" robin.smith@cloudreach.co.uk
}

function note {
	cd ~/temp && mate $1
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

# Aliases
###############################################################################

alias resource="source ~/.zshrc"

alias rs="resource"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias vconfig="vim ~/.ssh/config"

alias mconfig="mate ~/.ssh/config"

alias vzshrc="vim ~/.zshrc"

alias mzshrc="mate ~/.zshrc"

alias czshrc="cat ~/.zshrc"

alias edit=$EDITOR

alias config="edit ~/.ssh/config"

alias zshrc="edit ~/.zshrc"

POSTCODE="V6B 6H4"
alias postcode="echo $POSTCODE && echo $POSTCODE | pbcopy"

alias address="copy_print '438 Seymour Street, #1701, Vancouver, British Columbia, ${POSTCODE}'"r

OFFICE_POSTCODE="V6B 2Y5"
alias officepostcode="echo $OFFICE_POSTCODE && echo $OFFICE_POSTCODE | pbcopy"

alias nocchef="cd $NOCCHEF"

alias mschef="cd $MSCHEF"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rks="rake save"

alias fbs="fab save"

alias tagalog="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/tagalog.csv -t 10 -g 3"

alias capitals="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/capitals.csv -t 10 -g 3"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

alias cards="cat '$DOCUMENTS_HOME/IMPORTANT/records/card.txt'"

alias cardhsbc="get_card hsbc-debit"

alias cardrbc="get_card rbc-debit"

alias cardcredit="get_card rbc-credit"

alias gstat='cd $PROG_HOME && gs'

alias pb="pbcopy"

alias phone="copy_print '+1 604-603-9325'"

alias phonelong="copy_print '001 604 603 9325'"


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

defaults write com.apple.screencapture location $SCREENSHOTS_HOME 2> /dev/null
defaults write -g ApplePersistence -bool no 2> /dev/null
chflags nohidden ~/Library/ 2> /dev/null


# Ubuntu
########
