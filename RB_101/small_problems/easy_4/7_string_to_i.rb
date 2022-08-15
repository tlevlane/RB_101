=begin
create a method that converts a string of numbers into an integer

input: string of numbers
output: string of integers

rules:
-old fashioned way, no to_i
-ignore positive or negative symbols
q: does this mean we are only dealing with positive or does it mean the code should
actively ignore these characters? ignore the concept

steps:
- create an index variable and assign it's value to -1
- create current_int variable set it equal to 0
- create final_int variable equal to 0
- create a loop that breaks when index * -1 is equal to string's length
  -create case statement that converts current_int to integer equivalent of string[index]
  -within loop take string[index]
  -if index * -1 > 1 then current_int *= (10 * (index * -1)
  -final_int += current_int
  -index -= 1
- return final_int

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
  digits = string.chars.map{|i| DIGITS[i]}
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570
