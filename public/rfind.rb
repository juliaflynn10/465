#Julia Flynn
#CINS 465
#Project 1


#!/usr/bin/env ruby

stars = 50 * "*"
dashes = 50 * "-"
tabs  = 2 * " "


key = gets #store searchable word
key.delete "\n" + "\"" + "\'" #delete unwanted characters from gets
all_files = (`find .`).split #find all files (with their paths) store as strings rather than array

puts "Files with names that matches <" + key + ">"
wanted_types = all_files.select {|file| file =~ /.rb|.erb|.js|.css|.html|.yml|.txt/} #filter only files that we want to search, generate an array
matched_titles = wanted_types.select { |exp| exp =~ /\S*#{key}\S*/} #look in those files' titles for the key word, generate an array
matched_titles.each {|i| p tabs + i} #print results with 2 spaces
puts stars #print 50 stars


puts "Files with content that matches <" + key + ">" #print this
grepped = Array.new
first_grepped = Boolean.new(true)
wanted_types.each do |path|#for every type of file we want to search
    grepped = `grep -i -n #{key} #{path}`.split("\n")#make an array of lines found containing key
    unless grepped.empty? #no output if nothing is grepped
        unless first_grepped #if first item do not print dashes
            puts dashes #print 50 seperating dashes
        end
        puts path #print file path
        grepped.each {|line| p line} #print all elements in grepped
    end
    first_grepped = false
end