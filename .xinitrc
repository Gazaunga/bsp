xrandr --mode 1920x1080
sxhkd &
dunst &
compton &
#bash ~/bin/bar.sh
#conky &
~/.fehbg &
bash ~/bin/polybar.sh
xrdb -merge ~/.Xresources
urxvtd -q -o -f
exec bspwm
