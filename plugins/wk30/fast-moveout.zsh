#!/usr/bin/env zsh

BIN="$XDG_CONFIG_HOME/sway/plugins/wk30"

$BIN/moveout.zsh $($BIN/get-new-workspace.zsh)

