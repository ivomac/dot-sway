#!/usr/bin/env zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

source "$BIN/env.zsh"

swaymsg "bindsym $1 exec $BIN/new-workspace.zsh"

swaymsg "bindsym $2 exec $BIN/enter-nav.zsh"
swaymsg "bindsym $3 exec $BIN/enter-moveout.zsh"
swaymsg "bindsym $4 exec $BIN/fast-moveout.zsh"

for mode ( "NAVIGATE" "MOVEOUT" ); do
	for key ( "Return" "Escape" ); do
		swaymsg "mode $mode bindsym --no-repeat $key exec $BIN/exit.zsh" > /dev/null
	done
done

for i in {1..30}; do
	key="${wk_keys[$i]}"
	name="${wk_names[$i]}"
	swaymsg "rename workspace number $i to $name"
	swaymsg "mode NAVIGATE bindsym --no-repeat $key exec $BIN/change-wk.zsh $name"
	swaymsg "mode MOVEOUT bindsym --no-repeat $key exec $BIN/moveout.zsh $name"
done

