#Julia Flynn
#CINS 465
#Project 1


#!/usr/bin/env ruby

:stars = 50."*"
:dashes = 50."-"
:tabs  = 2." "


key = gets
file = Array.new
file = (`find .`).split

puts "Files with content that matches <" + key + ">"
puts file.each
puts :stars
