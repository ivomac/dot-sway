
export TERMINAL="foot"
export MENU="menu"
export BROWSER="qutebrowser"
export PDF="zathura"
export IMAGE="qimgv"

export QUTE_QT_WRAPPER="PyQt6"

export WLR_RENDERER=gles2
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland
export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland,x11
export CLUTTER_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export ECORE_EVAS_ENGINE=wayland
export ELM_ENGINE=wayland
export SDL_VIDEODRIVER=wayland

export WLR_NO_HARDWARE_CURSORS=1
export WLR_DRM_NO_MODIFIERS=1
export WLR_DRM_NO_ATOMIC=1

export XCOMPOSEFILE="$XDG_CONFIG_HOME/sway/xcompose"
export XKB_DEFAULT_OPTIONS="compose:menu"

_WALLPATH="$IMAGES/Wallpaper/16x9"
_WALLS=($_WALLPATH/*.jpg)
_WALLS=( $(shuf -e "${_WALLS[@]}") )

export _SWAY_BG0="${_WALLS[1]}"
export _SWAY_BG1="${_WALLS[2]}"
export _SWAY_BG2="${_WALLS[3]}"

