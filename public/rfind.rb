#Julia Flynn
#CINS 465
#Project 1


#!/usr/bin/env ruby

stars = 50 * "*"
dashes = 50 * "-"
tabs  = 2 * " "


key = gets #store searchable word
all_files = (`find .`).split #find all files (with their paths) store as strings rather than array

puts "Files with names that matches <" + key + ">"
wanted_types = all_files.select {|file| file =~ /.rb|.erb|.js|.css|.html|.yml|.txt/} #filter only files that we want to search, generate an array
matched_titles = wanted_types.select { |exp| exp =~ /\S*#{key}\S*/} #look in those files' titles for the key word, generate an array
matched_titles.each {|i| p tabs + i} #print results with 2 spaces
puts stars #print 50 stars


puts "Files with content that matches <" + key + ">" #print this
grepped = Array.new
wanted_types.each do |path|
    grepped = `grep -i -n #{key} #{path}`}.split("\n")
    puts path
    puts grepped
    puts dashes
    
end