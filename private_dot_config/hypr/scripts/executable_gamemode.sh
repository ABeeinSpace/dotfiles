#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | sed -n '1p' | awk '{print $2}')
if [ $HYPRGAMEMODE = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    notify-send "Game Mode Enabled" -u low -i "$HOME/.config/hypr/scripts/gamemode.png"
    exit
else
    hyprctl reload
    notify-send "Game Mode Disabled" -u low -i "$HOME/.config/hypr/scripts/gamemode.png"
fi
