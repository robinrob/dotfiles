# Functions
###############################################################################

source $DOTFILES_HOME/colors.sh

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

function get_record {
	cmd="grep $1 $RECORDS_HOME"
	val=$(eval "$cmd")
	val2=`echo ""$val"" | awk -F: '{print $2}'`
	copy_print ""$val2""
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

function new {
	FILE="$1.$2"
	
	if ! [ -f $FILE ]
	then
		if [ $# -eq 3 ]
		then	
			green "Creating and shebanging new file: ${FILE}"
			echo "#!/usr/bin/env $3" > $FILE
			chmod +x $FILE
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
			chmod +x $FILE
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
	cd_action $1 save
}

function cd_status {
	cd_action $1 status
}

function cd_count_all {
	cd_action $1 count_all
}

function cd_action {
	output=`cd $1 && rake $2`
	green `echo $output | grep total`
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

function lib_find {
	DIR=$1
	PATTERN=$2
	
	result_find=`find $DIR -name *$PATTERN*`
	result_grep=`grep -r $PATTERN $DIR`
	
	results=$result_find
	if [ -n "$result_grep" ]
	then
		results=$results"\n"$result_grep
	fi
	
	for result in $results
	do
		echo $result
	done
}

function al {
	echo "\nalias $1=\"$2\"" >> $DOTFILES_HOME/aliases.zsh
}

function fr {
	find . -name *$1*
}

function file_grep {
	grep -A 3 $1 $2
}

function zfind {
	file_grep $1 ~/.zshrc
}

function sshfind {
	file_grep $1 ~/.ssh/config
}

function rks {
	if [ -f Rakefile ]
	then
		rake save
	else
		red "No Rakefile!"
	fi
}