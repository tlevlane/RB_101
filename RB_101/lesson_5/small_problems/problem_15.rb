=begin
problem: 
return an array with hashes where all the integer values are even

input:
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

output:[{e:[8], f:[6, 10]}]

rules:
-only return an array with hashes where all the values are even

steps:
itterate through the main array
itterate through the keys within each hash
itterate through the elements of each array
select hashes where each element of every array is even
t: nested all? statements?
return array with the selected hashes
=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

def even_array(array)
  array.select do |hash|
    hash.all? do |key, value|
        value.all? {|i| i % 2 == 0}
    end
  end
end

p even_array(arr)