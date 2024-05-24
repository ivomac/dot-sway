#!/usr/bin/zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

source "$BIN/env.zsh"

cur_wks=$(swaymsg -r -t get_workspaces | jq -r '.[] | .name')

for wk in $wk_names; do
	if [[ ! $cur_wks =~ $wk ]]; then
		echo $wk
		exit 0
	fi
done

