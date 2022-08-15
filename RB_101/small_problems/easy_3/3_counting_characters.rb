puts "Please enter a word or phrase"
words = gets.chomp

characters = words.delete(" ")
puts "There are #{characters.length} characters in \"#{words}\""