#!/usr/bin/env ruby

require 'fileutils'

filename = "packagelist" # more specific?

app_list = File.open(filename, "r")

install = ->app{ `trizen -Syu --noconfirm #{app}` }

## METHODS ##

def grab_wallpaper
status = system("git clone https://github.com/Gazaunga/Wallpapers ~/.wallpapers")
puts status ? "Success" : "Failed"
end

def grab_fonts
status = system("git clone https://github.com/Gazaunga/.fonts")
puts status ? "Success" : "Failed"
end

def make_spacemacs
status = system("git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d")
puts status ? "Success" : "Failed" 
end

## MAIN ##
grab_wallpaper
grab_fonts
make_spacemacs
Dir.glob("#{Dir.home}/bsp/.", File::FNM_DOTMATCH).each { |f| FileUtils.cp_r("#{f}", DESTINATION, :verbose => true) }
app_list.each_line &install
