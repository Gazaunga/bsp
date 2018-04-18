#!/usr/bin/env ruby

require 'fileutils'
require 'pathname'

ATOM_HOME = Pathname.new(File.expand_path("#{Dir.home}/.atom"))

atom_packages = %w[
  atom-runner
  ruby-block-converter
  toggle-quotes
  linter-ruby
  #linter-rubocop
  color-picker
  ruby-block
  aesthetic-ui
  redmond-syntax
  emmet
  pigments
  atom-beautify
  file-icons
  minimap
]

filename = "packagelist" # more specific?

app_list = File.open(filename, "r")

install = ->app{ `trizen -Syu --noconfirm #{app}` }

## METHODS ##

def atom_install(a)
`apm install #{a}`
end

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

unless Dir.exist?(ATOM_HOME)
FileUtils.mkdir_p("#{ATOM_HOME}", :verbose => true)
else
atom_packages.each { |a| atom_install(a) }
puts "Atom is ready for Ruby development!"
end
