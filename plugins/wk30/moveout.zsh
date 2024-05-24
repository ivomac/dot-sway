#!/usr/bin/zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"
 
swaymsg "[con_id=__focused__] move window to workspace $1 , focus"
swaymsg mode default
$BIN/overview.zsh 0
