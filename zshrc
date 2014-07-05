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
rvm use ruby-2.0.0-p247 1> /dev/null
rvm gemset use chef --create 2> /dev/null

# Python
########
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

pythonbrew use 2.7 2> /dev/null


# Environment variables
#############################

# export EDITOR="/usr/local/bin/c -w"
export HOSTNAME=`hostname`

export SCREENSHOT_NAME=$HOSTNAME

export EDITOR="/usr/bin/vim"

export PROG_HOME=$HOME/Programming/robin

export DOCUMENTS_HOME=$HOME/Dropbox

export SH_HOME=$PROG_HOME/sh

export PYTHON_HOME=$PROG_HOME/python

export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export FABFILE_HOME=$PY_HOME/projects/fabfile

export ZSH_HOME=$PROG_HOME/zsh

export SH_HOME=$PROG_HOME/sh

export DOTFILES_HOME=$PROG_HOME/dotfiles

export ZSHRC=$DOTFILES_HOME/zshrc

export C_HOME=$PROG_HOME/c

export HTMLCSS_HOME=$PROG_HOME/html-css

export RUBY_HOME=$PROG_HOME/ruby

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

export RAKEFILE_HOME=$RUBY_HOME/projects/rakefile

export GLOBAL_RAKEFILE_HOME=$RUBY_HOME/projects/global-rakefile

export QUIZ_HOME=$RUBY_HOME/projects/quiz

export MRROBINSMITHCOM_HOME=$RUBY_HOME/projects/mrrobinsmith.com

export REPOS=$RUBY_HOME" "$SH_HOME" "$DOTFILES_HOME" "$PYTHON_HOME

export IMPORTANT_HOME=$DOCUMENTS_HOME/IMPORTANT

export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export PERL_HOME=$PROG_HOME/perl

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export GAM_PATH=/usr/local/Library/gam

export WORK_HOME=~/Programming/work

export NOCCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef

export MSCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef

export TEMP_HOME=~/Dropbox/temp/$HOSTNAME

export SCREENSHOTS_HOME=$TEMP_HOME/screenshots

export SCREENSHOT_NAME=$HOSTNAME

export LOCAL_HOME=$PROG_HOME/local

export TODO_HOME=$LOCAL_HOME/lib/todo.csv


# Functions
###############################################################################

function get_card {
	copy_print `cat $IMPORTANT_HOME/records/card.txt | grep $1 | awk -F: '{print $2}'`
}

function get_phone {
	cmd="cat $IMPORTANT_HOME/records/phone.txt | grep $1"
	val=$(eval "$cmd")
	echo ""$val"" | awk -F: '{print $2}'
	val2=echo ""$val"" | awk -F: '{print $2}'
	echo $val2
	# copy_print ""`echo ""$val"" | awk -F: '{print $2}'`""
	# echo ""$val""
}

function get_address {
	cmd="cat $IMPORTANT_HOME/records/address.txt | grep $1"
	val=$(eval "$cmd")
	echo ""$val"" | awk -F: '{print $2}'
	echo ""$val"" | awk -F: '{print $2}' | pbcopy
}

function reminder {
	reminder $1 robin@mrrobinsmith.com
}

function reminderwork {
	reminder $1 robin.smith@cloudreach.co.uk
}

function reminder {
	SUBJECT=$1
	if [ -z "$2" ]
	then
	    ADDRESS='robin.smith@cloudreach.co.uk'
	fi
	echo $1 | mail -s "REMINDER: $SUBJECT" $ADDRESS
}

function note {
	cd $TEMP_HOME && mate "$1.txt"
}

function song {
	cd $DOCUMENTS_HOME/creative/songs && mate "$1.txt"
}

function write {
	cd $DOCUMENTS_HOME/creative/writing && mate "$1.txt"
}

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

# function docs_home {
# 	if [[ `hostname` == "mercury.local" ]]; then
# 		export DOCUMENTS_HOME="$HOME/Google Drive"
# 	elif [[ `hostname` == "venus.local" ]]; then
# 		export DOCUMENTS_HOME="$HOME/Documents"
# 	fi
# }


function new {
	if [ -n `ls $1`]
	then
		echo '#!/usr/bin/env ruby' > $1
		chmod +x $1
		mate $1
	fi
}

function new {
	FILE="$1.$3"
	
	if [ -z `ls $FILE 2> /dev/null` ]
	then
		echo "#!/usr/bin/env $2" > $FILE
		chmod +x $FILE
		mate $FILE
	else
		echo "file: $FILE already exists!"
	fi	
}
	

function pnew {
	new $1 python py
}

function bnew {
	new $1 bash sh
}

function snew {
	new $1 sh sh
}

function znew {
	new $1 zsh zsh
}

function rnew {
	new $1 ruby rb
}

function hcnew {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	mate *
}

function hcexample {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	mate *
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	mate $FILE
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	mate $FILE
}

function cssnew {
	mate "$1.css"
}

function new {
	FILE="$1.$3"
	
	if [ -z `ls $FILE 2> /dev/null` ]
	then
		echo "#!/usr/bin/env $2" > $FILE
		chmod +x $FILE
		mate $FILE
	else
		echo "file: $FILE already exists!"
	fi	
}

function cd_pull {
	cd $1
	output=`git branch | head -1` > /dev/null
		
	comps=("${(s/* /)output}") # notice the quotes

	branch=$comps[2]

	git pull origin $branch
	
	cd -
}

function cd_save {
	cd $1 && rake save && cd -
}


function opens {
	cd $SCREENSHOTS_HOME && open "\"$(lastf -s $SCREENSHOT_NAME)\"" && cd -
}

function lasts {
	cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME
}

function t3389 {
	telnet_port $1 3389
}

function t22 {
	telnet_port $1 22
}

function telnet_port {
	telnet $1 $2
}


# quotes
###############################################################################

alias m="mate"

alias rs="source ~/.zshrc"

alias RS="source ~/.zshrc"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias vconf="vim ~/.ssh/config"

alias mconf="mate ~/.ssh/config"

alias vzsh="vim ~/.zshrc"

alias mzsh="mate ~/.zshrc"

alias czsh="cat ~/.zshrc"

alias edit=$EDITOR

alias conf="edit ~/.ssh/config"

alias zshrc="edit ~/.zshrc"

alias phone="get_phone short"

alias phonelong="get_phone long"

POSTCODE="V6B 6H4"
alias postcode="echo $POSTCODE && echo $POSTCODE | pbcopy"

alias address="get_address home"

alias addresswork="get_address work"

OFFICE_POSTCODE="V6B 2Y5"
alias officepostcode="echo $OFFICE_POSTCODE && echo $OFFICE_POSTCODE | pbcopy"

alias nocchef="cd $NOCCHEF"

alias mschef="cd $MSCHEF"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rks="rake save"

alias rkp="rake pull"

alias fbs="fab save"

alias tagalog="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/tagalog.csv -t 10 -g 3"

alias capitals="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/capitals.csv -t 10 -g 3"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

alias cardhsbc="get_card hsbc-debit"

alias cardrbc="get_card rbc-debit"

alias cardcredit="get_card rbc-credit"

alias gstat='cd $PROG_HOME && gs'

alias pb="pbcopy"

alias spl="mate $TEMP_HOME/splunk_searches.txt"

alias dpl="cd_pull $DOTFILES_HOME"

alias dsv="cd_save $DOTFILES_HOME"

alias lpl="cd_pull $LOCAL_HOME"

alias lsv="cd_save $LOCAL_HOME"

alias qpl="cd_pull $QUIZ_HOME"

alias qsv="cd_save $QUIZ_HOME"

alias screenshots="cd $SCREENSHOTS_HOME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"

alias gpd="git pull origin develop"

alias gpm="git pull origin master"

alias conf="mate config.json"

alias fp="find $PWD -name "

alias gcm="git checkout master"

alias gcd="git checkout develop"

alias bi="bundle install"

alias rnsall="cd $SCREENSHOTS_HOME && despace"

alias rns="cd $SCREENSHOTS_HOME && mv `lasts` $1"

alias msp="copy_print `cat $IMPORTANT_HOME/records/bc_msp.txt`"

alias gl="git log"

alias t3="t3389"

alias t2="t22"

function rns = {
	cd $SCREENSHOTS_HOME && despace && mv `lasts` $1 && cd -
}

# Un-Aliases
###############################################################################
unalias todo


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
