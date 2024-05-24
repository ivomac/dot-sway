#!/usr/bin/zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

swaymsg mode NAVIGATE
$BIN/overview.zsh 1
