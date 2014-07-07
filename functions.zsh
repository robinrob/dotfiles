# Functions
###############################################################################

function get_card {
	copy_print `cat $IMPORTANT_HOME/records/card.txt | grep $1 | awk -F: '{print $2}'`
}

function get_phone {
	cmd="cat $IMPORTANT_HOME/records/phone.txt | grep $1"
	val=$(eval "$cmd")
	val2=`echo ""$val"" | awk -F: '{print $2}'`
	copy_print ""$val2""
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
	cd $SCREENSHOTS_HOME && open ""$(lastf -s Screen)"" && cd -
}

function rns {
	cd $SCREENSHOTS_HOME
	mv "`lasts $1`"
}