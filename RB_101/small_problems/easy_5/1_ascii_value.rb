=begin
write a method that takes a string and returns the ascii value of the string

input: a string
output: an integer representing the ascii value of the string

rules:
-allowed to use the .ord method to calculate the ascii value

steps:
-seperate the string into an array with chars
-run each on string array
  -each itteration finds the ascii value of the string and adds it to a sum variable
- return sum

=end

def ascii_value(str)
  sum = 0
  str.chars.each {|char| sum += char.ord}
  sum
end 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0