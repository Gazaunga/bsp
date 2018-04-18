xrandr --mode 1920x1080
sxhkd &
dunst &
compton &
#bash ~/bin/bar.sh
#conky &
feh --randomize --bg-fill ~/.wallpapers/*
polybar bottom&
polybar top&
xrdb -merge ~/.Xresources
urxvtd -q -o -f
exec bspwm
