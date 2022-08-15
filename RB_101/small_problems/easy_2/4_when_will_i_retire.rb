puts "What is your age?"
age = gets.chomp
puts "At what age would you like to retire?"
retire_age = gets.chomp
year = 2022

years_left = (retire_age.to_i - age.to_i)
retire_year = year + years_left

puts "It's #{year}. You will retire in #{retire_year}"
puts "You have only #{years_left} years of work to go!"