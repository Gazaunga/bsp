#!/usr/bin/env ruby

require 'fileutils'


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

Dir.glob("#{Dir.home}/bsp/.", File::FNM_DOTMATCH).each { |f| FileUtils.cp_r("#{f}", DESTINATION, :verbose => true) }
