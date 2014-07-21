# Functions
###############################################################################

source $DOTFILES_HOME/colors.sh

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
	cd $TEMP_HOME && $EDITOR "$1.txt"
}

function song {
	cd $DOCUMENTS_HOME/creative/songs && $EDITOR "$1.txt"
}

function write {
	cd $DOCUMENTS_HOME/creative/writing && $EDITOR "$1.txt"
}

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

function new {
	FILE="$1.$2"
	
	if ! [ -f $FILE ]
	then
		if [ $# -eq 3 ]
		then	
			green "Creating and shebanging new file: ${FILE}"
			echo "#!/usr/bin/env $3" > $FILE
			chmod x $FILE
		else
			green "Creating new file: ${FILE}"
			touch $FILE
		fi
			
	else
		if [ $# -eq 2 ]
			CONTENTS=`cat $FILE`
			rm $FILE
			green "Shebanging existing file: ${FILE}"
			echo "#!/usr/bin/env $3" > $FILE
			echo $CONTENTS >> $FILE
	fi
	
	$EDITOR $FILE
}
	
function pnew {
	new $1 py python
}

function bnew {
	new $1 sh bash
}

function snew {
	new $1 sh sh
}

function znew {
	new $1 zsh zsh
}

function rnew {
	new $1 rb ruby
}

function jsnew {
	new $1 js node
}

function tnew {
	new $1 txt
}

function hcnew {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	$EDITOR *
}

function hcexample {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	$EDITOR$EDITOR *
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	$EDITOR $FILE
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	$EDITOR $FILE
}

function cssnew {
	$EDITOR "$1.css"
}

function cd_pull {
	output=`cd $1 && git branch | head -1 > /dev/null`
		
	comps=("${(s/* /)output}") # notice the quotes

	branch=$comps[2]

	`cd $1 && git pull origin $branch > /dev/null`
}

function cd_save {
	`cd $1 && rake save > /dev/null`
}


function opens {
	cd $SCREENSHOTS_HOME && despace && open `lasts`
}

function rns {
	cd $SCREENSHOTS_HOME && despace
	mv `lasts` $1
}

function gr {
	grep -r $1 *
}

function t3389 {
	telnet $1 3389
}

function t22 {
	telnet $1 22
}

function wopen {
	$EDITOR `which $1`
}

function jlint {
	cat $1 | jsonlint
}

function docs {
	HOSTNAME=$1
	return $FILES_NAME/$HOSTNAME/docs
}

function gcr {
	`git clone -b master git@bitbucket.org:robinrob/$1.git`
}

function mvd {
	mv ~/Downloads/$1 $2
}

function rfind {
	results=`cd $RUBY_HOME && find . -name *$1*`
	
	for result in $results
	do
		green $result
	done
}