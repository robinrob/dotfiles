#Black       0;30     Dark Gray     1;30
#Blue        0;34     Light Blue    1;34
#Green       0;32     Light Green   1;32
#Cyan        0;36     Light Cyan    1;36
#Red         0;31     Light Red     1;31
#Purple      0;35     Light Magenta  1;35
#Brown       0;33     Yellow        1;33
#Light Gray  0;37     White         1;37

export ccdefault=$(echo "[0m")
export ccblack=$(echo "[0;30m")
export ccdarkgrey=$(echo "[1;30m")
export ccred=$(echo "[0;31m")
export ccgreen=$(echo "[0;32m")
export cclightyellow=$(echo "[1;33m")
export ccyellow=$(echo "[0;33m")
export ccbrown=$(echo "[0;33m")
export ccblue=$(echo "[0;34m")
export cclightblue=$(echo "[1;34m")
export ccpink=$(echo "[0;35m")
export cccyan=$(echo "[0;36m")
export ccwhite=$(echo "[1;37m")
export ccmagenta=$(echo "[1;35m")

export ccguess=$(echo "[1;39m")

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

function green {
	color green $@
}

function yellow {
	color yellow $@
}

function lightyellow {
	color lightyellow $@
}

function blue {
	color blue $@
}

function pink {
	color pink $@
}

function cyan {
	color cyan $@
}

function white {
	color white $@
}

function magenta {
	color magenta $@
}

function maganda {
	magenta $@
}

function brown {
	color brown $@
}

function lightblue {
	color lightblue $@
}