# Functions
###############################################################################

source $DOTFILES_HOME/colors.sh

function join {
	local IFS="$1"; shift; echo "$*";
}

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
	ADDRESS=$1
	SUBJECT=$2
	echo $SUBJECT | mail -s "REMINDER: $SUBJECT" $ADDRESS
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
	FILE_DISPLAY=$(yellow $FILE)
	COLOR="green"
	CREATE_SHEBANG_MSG="$COLOR 'Creating, +x''ing and shebanging new file: $FILE_DISPLAY'"
	SHEBANG_MSG="$COLOR Shebanging and +x''ing existing file: $FILE_DISPLAY"
	CREATE_MSG="$COLOR Creating new file: $FILE_DISPLAY"
	OPEN_MSG="$COLOR Opening existing file: $FILE_DISPLAY"
	
	if ! [ -f $FILE ]
	then
		if [ -n "$INTERPRETER" ]
		then	
			eval $CREATE_SHEBANG_MSG
			echo "#!/usr/bin/env $INTERPRETER\n" > $FILE
			chmod +x $FILE
		else
			eval $CREATE_MSG
			touch $FILE
		fi
	else
		if [ -n "$INTERPRETER" ]
		then
			CONTENTS=`cat $FILE`
			rm $FILE
			eval $CREATE_SHEBANG_MSG
			echo "#!/usr/bin/env $INTERPRETER" > $FILE
			echo $CONTENTS >> $FILE
			chmod +x $FILE
		else
			eval $OPEN_MSG
		fi
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
	cd_action $1 rake save
}

function cd_count_all {
	cd_action $1 rake count_all
}

function cd_status {
	cd_action $1 git status
}

function cd_diff {
	cd_action $1 git diff
}

function cd_action {
	REPO=$1
	cd $REPO
	green "In repo: $REPO"
	shift
	$@
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

function color_keywords {
	TEXT=$1
	PATTERN=$2
	COLOR=$3
	echo $TEXT | sed "s/$PATTERN/$($COLOR $PATTERN)/"
}

function libfind {
	COLOR='green'
	while getopts :c:d:p: name
	do
		case $name in
			c) CAT="$OPTARG" ;;
			d) DIR="$OPTARG" ;;
			p) PATTERN="$OPTARG" ;;
			*) usage ;;                # display usage and exit
		esac
	done
	
	result_grep="`grep -r $PATTERN $DIR`"
	results=("${(f)result_grep}")
	
	if [ -n "$results" ]
	then
		for result in $results
		do
			color_keywords $result $PATTERN $COLOR
		done
	fi
	
	result_find=`find $DIR -type f -name "*$PATTERN*"`
	results=("${(f)result_find}")
	
	for result in $results
	do
		# If CAT not null
		if [ -n "$CAT" ]
		then
			eval "$COLOR $result"
			color_keywords "`cat $result`" $PATTERN $COLOR
		# If CAT null
		else
			color_keywords $result $PATTERN $COLOR
		fi
	done
}

# libfind-cat
function libfind_c {
	libfind -c cat -d $1 -p $2
}

function al {
	echo "\nalias $1=\"$2\"" >> $DOTFILES_HOME/aliases.zsh
}

function fr {
	find . -name $1
}

function file_grep {
	grep -A 3 $2 $1
}

function rake_do {
	TASK=$1
	
	if [ -f Rakefile ]
	then
		rake $TASK
	else
		red "No Rakefile!"
		red "\`rake -f $RAKEFILE_HOME/Rakefile save\` to use master Rakefile"
	fi
}

function rks {
	rake_do save
}

function rkc {
	rake_do commit
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
		repo=`git config --get remote.origin.url | awk '{split($1,a,"/"); print a[2]}'`
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

function is_git {
	result=`ls -d .git 2> /dev/null`
	if [ "$result" ]
	then
		echo "yes"
	fi
}

function show_git {
	if [ "$(is_git)" ]
	then
		green "Is Git"
	else
		red "Not Git"
	fi
}

function git_remote_origin {
	if [ "$(is_git)" ]
	then
		origin=`git config --get remote.origin.url`
		green $origin
	else
		red "Not Git"
	fi 
}

function cd_dir {
	DIR=$1
	shift
	cd $DIR/$(join / $@)
}

function delexcept {
	while getopts :r:f: name
	do
		case $name in
			r) REGEX="$OPTARG" ;;
	    f) FOR_REAL="$OPTARG" ;;
	    *) usage ;;
		esac
	done

	if [ -n "$FOR_REAL" ]
	then
		red "Executing for real!"
		despace -t d && find . -depth 1 \( ! -regex ".*$REGEX.*" \) | xargs rm -r
	else
		green "Running in test mode."
		despace -t d && find . -depth 1 \( ! -regex ".*$REGEX.*" \) | xargs
	fi
	
	FOR_REAL=''
	REGEX=''
}