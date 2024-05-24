#!/usr/bin/zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

swaymsg workspace $1
swaymsg mode default
$BIN/overview.zsh 0
