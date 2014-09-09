#Julia Flynn
#CINS 465
#Project 1


#!/usr/bin/env ruby

:stars = 50 * "*"
:dashes = 50 * "-"
:tabs  = 2 * " "


key = gets
all_files = (`find .`).split
wanted_types = all_files.select {|file| file =~ /.rb|.erb|.js|.css|.html|.yml|.txt/}

matched_titles = wanted_types.select { |exp| exp =~ /\S*#{key}\S*/}



puts "Files with content that matches <" + key + ">"
matched_titles.each {|i| p i}
puts :stars
