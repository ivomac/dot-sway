#!/usr/bin/zsh

SOV_FILE="/tmp/sovpipe"

if [[ -n "$1" ]] && [[ -n "$(pgrep sov)" ]]; then
	echo $1 > "$SOV_FILE"
fi

