#!/usr/bin/zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

swaymsg workspace "$($BIN/get-new-workspace.zsh)"
