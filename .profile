if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi
