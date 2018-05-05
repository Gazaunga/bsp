xrandr --output VGA-1 --mode 1920x1080
#sxhkd &
dunst &
#compton &
#conky &
#~/.fehbg &
bash ~/bin/polybar.sh
#xrdb -merge ~/.Xresources
#urxvtd -q -o -f
xmodmap -e "clear Lock"
xmodmap -e "add Control = Control_L"
exec bspwm
