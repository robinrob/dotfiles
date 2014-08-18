# Functions
###############################################################################

source $DOTFILES_HOME/colors.sh

function hidden_dir_exists() {
	result=`find . -depth 1 -name $1`
	if [ -n "$result" ]
	then
	  echo "yes"
	fi
}

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	echo $1 && echo $1 | pbcopy
}

function get_record {
	cmd="grep $1 $RECORDS_PATH"
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
	cd $MERCURY_HOME/docs/creative/songs && $EDITOR "$1.txt"
}

function write {
	cd $DOCS_HOME/creative/writing && $EDITOR "$1.txt"
}

function new {
	if [ $# -eq 3 ]
	then
		INTERPRETER=$1
		EXTENSION=$2
		FILENAME=$3
		
	elif [ $# -eq 2 ]
	then
		EXTENSION=$1
		FILENAME=$2
	fi
	
	FILE="$FILENAME.$EXTENSION"
	
	if ! [ -f $FILE ]
	then
		if [ -n "$INTERPRETER" ]
		then	
			green "Creating and shebanging new file: ${FILE}"
			echo "#!/usr/bin/env $INTERPRETER" > $FILE
			chmod +x $FILE
		else
			green "Creating new file: ${FILE}"
			touch $FILE
		fi
			
	else
		CONTENTS=`cat $FILE`
		rm $FILE
		green "Shebanging existing file: ${FILE}"
		echo "#!/usr/bin/env $INTERPRETER" > $FILE
		echo $CONTENTS >> $FILE
		chmod +x $FILE
	fi
	
	INTERPRETER=""
	FILENAME=""
	EXTENSION=""
	$EDITOR $FILE
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
	cd $1
	green "In repo: $1"
	rake $2
	cd -
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
	CAT=$3
	
	result_find=`find $DIR -name *$PATTERN*`
	result_grep=`grep -r $PATTERN $DIR`
	
	results=$result_find
	if [ -n "$result_grep" ]
	then
		results=$results"\n"$result_grep
	fi
	
	for result in $results
	do
		# If $3 null
		if [ -z "$3" ]
		then
			echo $result
		# If $3 not null
		else
			cat $result
		fi
	done
}

function al {
	echo "\nalias $1=\"$2\"" >> $DOTFILES_HOME/aliases.zsh
}

function fr {
	find . -name $1
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
		red "\`rake -f $RAKEFILE_HOME/Rakefile save\` to use master Rakefile"
	fi
}

function killp {
	if [ -z $1 ]
	then
		red "Must give name of process!"
		
	else
		
		green "Killing all $1 processes ..."
	
		sh -c  "PROCESSES=eval('ps aux')"
		# ; for process in $PROCESSES; do green '"'Killing $1 process: $process ...'"'; kill $process; done"
	fi
}

function rakeup {
	git submodule add git@bitbucket.org:robinrob/rakefile.git rake
	ln -s rake/Rakefile ./
}

function rakedown {
	rake sub_deinit[rake]
	rm Rakefile
}

function fabup {
	gsa git@bitbucket.org:robinrob/fabfile.git fabfile
	ln -s fabfile/fabfile.py ./
}

function fabdown {
	fab sub_deinit:rake
	rm fabfile.py
}

function wiki {
	open "http://en.wikipedia.org/wiki/Special:Search?search=$1&go=Go"
}

function safari {
	open "http://my.safaribooksonline.com/search?q=$1"
}

function google {
	open "https://www.google.ca/#q=$1&safe=active"
}

function lsd {
	ls `dirname $1`
}

function svwb {
	green "Copying Jetbrains config from $WEBSTORM_CONFIG ..."
	cp $WEBSTORM_CONFIG $DOTFILES_HOME/
}

function cddir {
	cd `dirname $1`
}

function bb {
	result=`ls -d .git 2> /dev/null`
	if [ "$result" ]
	then
		repo=`git remote show origin | grep "Fetch URL:" | awk '{split($3,a,"/"); print a[2]}'`
		green "Repo found: $repo"
		url="https://bitbucket.org/robinrob/$repo"
	else
		url="https://bitbucket.org/robinrob"
	fi
	
	green "Opening $url ..."
	open $url
}

function cleanhome {
	for file in `find . -name [a-zA-Z0-9]\* -depth 1 -type f`
	do
		green "Moving $file to $TRASH_HOME"
		mv $file ~/.Trash
	done
}