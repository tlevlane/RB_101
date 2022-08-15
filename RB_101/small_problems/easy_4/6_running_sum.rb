=begin

create a method that takes an array and returns an array where each element 
is the running sum of the elements of the input array

input: an array
output: an array of equal size whose elements are the running sum of the input
array elements

rules:
-output array must be the same size as the input array
-first element of the output is equivalent to the first element of the input
-each element of the output array is the sum of the current input array element
and the previous array

steps:
- create a sum variable equal to zero
- create empty output array
- itterate through intial array
  -set sum += to current element
  - append sum value to output array
-return output array

=end

def running_total(array)
  output = []
  sum = 0
  array.each do |ele|
    sum += ele
    output << sum
  end
  output
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []