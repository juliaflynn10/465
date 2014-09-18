#Julia Flynn
#CINS 465
#Project 2

#!/usr/bin/env ruby

TOTAL_GUESSES = 10
dic = Array.new

#push each line of a file into an array, deleting the \n chr
File.open('words', 'r') do |file|
    file.each_line{|line| dic.push(line.chomp)}
end

#prompt user
puts "Choose a number between 5 and 20."
#get input, convert to int
word_length = gets.chomp.to_i

if word_length < 5
    word_length = 5
elsif word_length > 20
    word_length = 20
end

#delete words that aren't of the specified length from the dictionary
dic.map!{|x| x if x.size == word_length}.compact!
failed = Array.new
passed = Array.new(word_length)
#while the user hasn't run out of guesses and the word hasn't been completed, allow guesses
while failed.length < TOTAL_GUESSES && passed.compact.length < word_length
    puts "Choose a letter. You have " + (TOTAL_GUESSES - failed.length).to_s + " guess(es) remaining."
    letter = gets.chr
    #while a letter has been guessed
    while failed.include?(letter) || passed.include?(letter)
        puts "You already guessed that, try again. Choose a letter."
        letter = gets.chr
    end
    #if you can't remove all words that contain the guessed character without the dictionary being empty
    if dic.map{|word| word if !word.include?(letter)}.compact.empty?
        offset = 0
        while offset != nil && word_length > offset 
            passed.delete_at(dic[0].index(letter, offset))
            passed.insert(dic[0].index(letter, offset), letter)
            offset = dic[0].index(letter, offset + 1)
        end
    else
        dic.map!{|word| word if !word.include?(letter)}.compact!
        failed.push(letter)
    end

    print "INCORRECT GUESSES: "
    failed.each{|x| print x, " "}

    print "\nMYSTERY WORD: "
    passed.each do |x| 
        if x 
            print x 
        else 
            print '_'
        end
        print " "
    end
    puts "\n"
end

if passed.compact.length == word_length
    puts "You Won!"
else
    puts "You Lost. The word was \"" + dic[0] + "\"."
end




