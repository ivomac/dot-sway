
export TERMINAL="foot"
export MENU="menu"
export BROWSER="qutebrowser"
export PDF="zathura"
export IMAGE="qimgv"

export XDG_CURRENT_DESKTOP=sway

export XCOMPOSEFILE="$XDG_CONFIG_HOME/sway/xcompose"
export XKB_DEFAULT_OPTIONS="compose:menu"

_WALLPATH="$IMAGES/Wallpaper/16x9"
_WALLS=($_WALLPATH/*.jpg)
_WALLS=( $(shuf -e "${_WALLS[@]}") )

export _SWAY_BG0="${_WALLS[1]}"
export _SWAY_BG1="${_WALLS[2]}"
export _SWAY_BG2="${_WALLS[3]}"

