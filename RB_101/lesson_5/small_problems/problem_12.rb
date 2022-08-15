=begin
write a piece of code that transforms the given array into a hash where the first value of each nested
array is the key and the second value is the value

input:multi-dimensional array where elements are subarrays
output: multi-dimensional hash where first value of given array is key and second value is value

rules:
-don't use to_h

steps:
-itterate through array
-take first value of subarray and convert it into key
-convert second value into value
-return the hash

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

def hash(array)
  hash ={}
  array.map do |sub|
    hash[sub[0]] = sub[1]
  end
  hash
end

p hash(arr)