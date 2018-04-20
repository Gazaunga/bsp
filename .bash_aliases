alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias src='source ~/.bashrc'
alias ls="bash ~/bin/devicons"
alias fuck="sudo !!"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias path='echo $PATH | tr -s ":" "\n"'
alias feh-set="feh --bg-fill"
alias m='env TERM=xterm-256color micro'

# bundle (jekyll)
if [ -x /usr/bin/bundler ]; then
    alias bibu='bundle install --path vendor/bundle && bundle update'
    alias bu='bundle update'
    alias bejs='bundle exec jekyll serve'
    alias bejsdev='bundle exec jekyll serve --config _config.yml,_config-dev.yml'
fi

if [ -x /usr/bin/flatpak ]; then
    alias fuall="flatpak update"
    # alias fuall="flatpak update $(flatpak list)"
    alias fls="flatpak list"
    alias fif="flatpak install --from"
    alias fiu="flatpak uninstall"
    alias fiuall="flatpak uninstall $(flatpak list)"
fi

# youtube-dl
if [ -x /usr/bin/youtube-dl ]; then
    alias ytaud='youtube-dl -ci --extract-audio --audio-format mp3 -o "~/Music/Youtube/%(title)s.%(ext)s"'
    alias ytvid='youtube-dl --no-playlist --no-part --write-description --newline --prefer-free-formats -o "~/Videos/Youtube/%(title)s.%(ext)s" '
fi
