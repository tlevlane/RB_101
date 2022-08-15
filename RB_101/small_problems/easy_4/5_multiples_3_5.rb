=begin

write a method that seraches for multiples of 3 and five between 1 and some
number and then computed the sum of those numbers

input: some number greater than 1
output: the sum of every multiple of 3 and 5 between 1 and the given number

steps:
-iterate through numbers between 1 and number
- select number divisible by 3 or 5
- save these numbers to an array
- calculate the sum of these numbers 

question: how do we itterate between numbers and use that 
=end

def multisum(number)
  index = 0
  all = []
  multi = []
  sum = 0
  loop do
    all << index + 1
    index += 1
    break if all.size == number
  end

  multi = all.select{|i| (i % 3 == 0 || i % 5 == 0)}
  multi.each{|i| sum += i}
  sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168