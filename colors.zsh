#Black       0;30     Dark Gray     1;30
#Blue        0;34     bright Blue    1;34
#Green       0;32     bright Green   1;32
#Cyan        0;36     bright Cyan    1;36
#Red         0;31     bright Red     1;31
#Purple      0;35     bright Magenta  1;35
#Brown       0;33     Yellow        1;33
#bright Gray  0;37     White         1;37

export ccdefault=$(echo "[0m")
export ccblack=$(echo "[0;30m")
export ccdarkgrey=$(echo "[1;30m")
export ccred=$(echo "[0;31m")
export ccbrightred=$(echo "[1;31m")
export ccgreen=$(echo "[0;32m")
export ccbrightgreen=$(echo "[1;32m")
export ccyellow=$(echo "[0;33m")
export ccbrightyellow=$(echo "[1;33m")
export ccblue=$(echo "[0;34m")
export ccbrightblue=$(echo "[1;34m")
export ccmagenta=$(echo "[0;35m")
export ccbrightmagenta=$(echo "[1;35m")
export cccyan=$(echo "[0;36m")
export ccbrightcyan=$(echo "[1;36m")
export ccwhite=$(echo "[0;37m")
export ccbrightwhite=$(echo "[1;37m")

function color {
	color=$1
	shift;
	start='${cc'$color'}'
	end='${ccdefault}'
	echo `eval echo $start$@$end`
}

function default {
	color default $@
}

function black {
	color black $@
}

function darkgrey {
	color darkgrey $@
}

function red {
	color red $@
}

function brightred {
	color brightred $@
}

function green {
	color green $@
}

function brightgreen {
	color brightgreen $@
}

function yellow {
	color yellow $@
}

function brightyellow {
	color brightyellow $@
}

function blue {
	color blue $@
}

function brightblue {
	color brightblue $@
}

function pink {
	color pink $@
}

function cyan {
	color cyan $@
}

function brightcyan {
	color brightcyan $@
}

function white {
	color white $@
}

function brightwhite {
	color brightwhite $@
}

function magenta {
	color magenta $@
}

function brightmagenta {
	color brightmagenta $@
}

function maganda {
	brightmagenta $@
}

function brown {
	color brown $@
}

function guess {
	color guess $@
}