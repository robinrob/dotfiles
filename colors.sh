#Black       0;30     Dark Gray     1;30
#Blue        0;34     Light Blue    1;34
#Green       0;32     Light Green   1;32
#Cyan        0;36     Light Cyan    1;36
#Red         0;31     Light Red     1;31
#Purple      0;35     Light Purple  1;35
#Brown       0;33     Yellow        1;33
#Light Gray  0;37     White         1;37

ccend=$(echo "\033[0m")
ccblack=$(echo "\033[0;30m")
ccdarkgrey=$(echo "\033[1;30m")
ccred=$(echo "\033[0;31m")
ccgreen=$(echo "\033[0;32m")
ccyellow=$(echo "\033[1;33m")
ccbrown=$(echo "\033[0;33m")
ccblue=$(echo "\033[0;34m")
cclightblue=$(echo "\033[1;34m")
ccpink=$(echo "\033[0;35m")
cccyan=$(echo "\033[0;36m")
ccwhite=$(echo "\033[1;37m")
cclightpurple=$(echo "\033[1;35m")

ccguess=$(echo "\033[1;39m")

function default() {
	echo ${ccend}$1${ccend}
}

function black() {
	echo ${ccblack}$1${ccend}
}

function darkgrey() {
	echo ${ccdarkgrey}$1${ccend}
}

function red() {
	echo ${ccred}$1${ccend}
}

function green() {
	echo ${ccgreen}$1${ccend}
}

function yellow() {
	echo ${ccyellow}$1${ccend}
}

function blue() {
	echo ${ccblue}$1${ccend}
}

function pink() {
	echo ${ccpink}$1${ccend}
}

function cyan() {
	echo ${cccyan}$1${ccend}
}

function white() {
	echo ${ccwhite}$1${ccend}
}

function lightpurple() {
	echo ${cclightpurple}$1${ccend}
}

function brown() {
	echo ${ccbrown}$1${ccend}
}

function lightblue() {
	echo ${cclightblue}$1${ccend}
}