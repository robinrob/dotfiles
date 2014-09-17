#Black       0;30     Dark Gray     1;30
#Blue        0;34     Light Blue    1;34
#Green       0;32     Light Green   1;32
#Cyan        0;36     Light Cyan    1;36
#Red         0;31     Light Red     1;31
#Purple      0;35     Light Purple  1;35
#Brown       0;33     Yellow        1;33
#Light Gray  0;37     White         1;37

ccend=$(echo "[0m")
ccblack=$(echo "[0;30m")
ccdarkgrey=$(echo "[1;30m")
ccred=$(echo "[0;31m")
ccgreen=$(echo "[0;32m")
ccyellow=$(echo "[1;33m")
ccbrown=$(echo "[0;33m")
ccblue=$(echo "[0;34m")
cclightblue=$(echo "[1;34m")
ccpink=$(echo "[0;35m")
cccyan=$(echo "[0;36m")
ccwhite=$(echo "[1;37m")
cclightpurple=$(echo "[1;35m")

ccguess=$(echo "[1;39m")


function default() {
	echo ${ccend}$@${ccend}
}

function black() {
	echo ${ccblack}$@${ccend}
}

function darkgrey() {
	echo ${ccdarkgrey}$@${ccend}
}

function red() {
	echo ${ccred}$@${ccend}
}

function green() {
	echo ${ccgreen}$@${ccend}
}

function yellow() {
	echo ${ccyellow}$@${ccend}
}

function blue() {
	echo ${ccblue}$@${ccend}
}

function pink() {
	echo ${ccpink}$@${ccend}
}

function cyan() {
	echo ${cccyan}$@${ccend}
}

function white() {
	echo ${ccwhite}$@${ccend}
}

function magenta() {
	echo ${cclightpurple}$@${ccend}
}

function maganda() {
	magenta $@
}

function brown() {
	echo ${ccbrown}$@${ccend}
}

function lightblue() {
	echo ${cclightblue}$@${ccend}
}
