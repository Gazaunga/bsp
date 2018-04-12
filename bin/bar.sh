#!/bin/sh
#
# lemonbar
#
# wm tool

a="%{F#FF99A1}"
t="%{F-}"

wks() {
    var=$(bspc wm -g | grep -o '[OFU][1-5]' | tail -c2)
    for i in $(seq 1 5); do
        if [ "$var" -eq "$i" ]; then
            line="$line$aÃ®â€šâ„¢$t"
        else
            line="$lineÃ®Æ’Â·"
        fi
    done
    echo "$line"
}

clk() {
    var=$(date +'%a %R')
    echo "$aÃ®â€šÂ£$t $var"
}

net() {
    var=$(iwgetid -r)
    echo "$aÃ®â€žÂ¿$t ${var:-Offline}"
}

vol() {
    var=$(amixer sget Master)
    if echo "$var" | grep -q off; then
        echo "$aÃ®ÂÂ$t Muted"
    else
        var=$(echo "$var" | grep -om1 '[0-9]*%')
        echo "$aÃ®ÂÂ$t $var"
    fi
}

bat() {
    var=$(cat /sys/class/power_supply/BAT0/capacity)
    if [ "$var" -eq 100 ]; then
        echo "$aÃ®Ë†Âº$t $var%"
    elif [ "$var" -gt 75 ]; then
        echo "$aÃ®Ë†Â¸$t $var%"
    elif [ "$var" -gt 25 ]; then
        echo "$aÃ®Ë†Â·$t $var%"
    else
        echo "$aÃ®Ë†Â¶$t $var%"
    fi
}

while echo "%{l}  $(wks)%{c}$(clk)%{r}$(net)  $(vol)  $(bat)  "
do sleep .2s
done |\
    lemonbar -g x30 \
    -f "-t-cherry-medium-r-normal--10-100-75-75-c-100-iso8859-1" \
    -f "-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1" \
    -B \#021B21 \
    -F \#E8DFD6
