=begin 
problem:
given an array, sort based on the odd values within sub arrays

input:
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

output:
[[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

rules:
-only sort the outer array, do not sort the inner array
-sort based on the odd values only
-if a value is not odd, it is not considered

steps
-itterate through the array
-compare the values odd within each array
-return the sorted array
=end


arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

def odd_sort(array)
  array.sort_by do |i|
    i.select{|digit| digit % 2 != 0}
  end
end

p odd_sort(arr)