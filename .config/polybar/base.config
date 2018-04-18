[colors]
background = ${xrdb:color0}
dim = ${xrdb:color1}
foreground = ${xrdb:color7}
active = ${xrdb:color4}

[bar/base]
width = 100%
height = 48
bottom = true

background = ${colors.background}
foreground = ${colors.foreground}

font-0 = "tamzen:size=16;2"
font-1 = "Wuncon Siji:size=18;2"

padding = 4 
module-margin = 2

modules-left = date
modules-center = bspwm
modules-right = mpd

[module/date]
type = internal/date

interval = 1.0

date = " %m-%d"
date-alt = " %H:%M"

[module/bspwm]
type = internal/bspwm

ws-icon-default = 
label-focused = 
label-occupied = %icon%
label-urgent = %icon%
label-empty = %icon%
label-separator = " "
label-focused-foreground = ${colors.active}
label-dimmed-foreground = ${colors.dim}
label-occupied-foreground = ${colors.dim}
label-urgent-foreground = ${colors.dim}
label-empty-foreground = ${colors.dim}

[module/mpd]
type = internal/mpd

password = lol no

format-online = <label-song>  <icon-prev> <toggle> <icon-next>
format-playing = ${self.format-online}
format-paused = ${self.format-online}
format-stopped = ${self.format-online}

label-song = %artist% - %title%

icon-play = 
icon-pause = 
icon-prev = 
icon-next = 
