source colors.sh

ITEM="> "

function item {
	return $ITEM$1
}

function indent {
	INDENT=$1
	STRING=$2
}