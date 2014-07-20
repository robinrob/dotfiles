# Functions
###############################################################################

source $DOTFILES_HOME/'colors.sh'

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
	cd $TEMP_HOME && edit "$1.txt"
}

function song {
	cd $DOCUMENTS_HOME/creative/songs && edit "$1.txt"
}

function write {
	cd $DOCUMENTS_HOME/creative/writing && edit "$1.txt"
}

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

function new {
	FILE="$1.$3"
	
	if [ -z `ls $FILE 2> /dev/null` ]
	then
		green "Creating and shebanging new file: ${FILE}"
		echo "#!/usr/bin/env $2" > $FILE
		chmod +x $FILE
		edit $FILE
	else
		CONTENTS=`cat $FILE`
		rm $FILE
		green "Shebanging existing file: ${FILE}"
		echo "#!/usr/bin/env $2" > $FILE
		echo $CONTENTS >> $FILE
		edit $FILE
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

function jsnew {
	new $1 node js
}

function hcnew {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	edit *
}

function hcexample {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	editedit *
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	edit $FILE
}

function hnew {
	FILE="$1.html"
	cp $HTMLCSS_HOME/template.html $FILE
	edit $FILE
}

function cssnew {
	edit "$1.css"
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
	edit `which $1`
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