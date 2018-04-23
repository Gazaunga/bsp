xrandr --output VGA-1 --mode 1920x1080
sxhkd &
dunst &
compton &
#conky &
~/.fehbg &
bash ~/bin/polybar.sh
xrdb -merge ~/.Xresources
urxvtd -q -o -f
exec bspwm
