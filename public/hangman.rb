#Julia Flynn
#CINS 465
#Project 2


#!/usr/bin/env ruby

full_dic = Array.new
File.open('words', 'r') do |file|
    file.each_line{|line| full_dic.push(line.chomp)}
end

put "Choose a number between 5 and 20"
word_length = gets.chomp.to_i

if word_length < 5
    word_length = 5
elsif word_length > 20
    word_length = 20
end

full_dic.map!{|x| x if x.size == word_length}.compact


    


