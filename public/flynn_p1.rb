#Julia Flynn
#CINS 465
#Project 1


#!/usr/bin/env ruby

:star = 50."*"
:dash = 50."-"
:tab  = 2." "


key = gets

file = Array.new

file.each do |path|
  path = file.insert(`find . #{key}`)
  puts file.each 
end
