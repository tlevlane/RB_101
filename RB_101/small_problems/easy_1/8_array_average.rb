def average(array)
  sum=0
  array.each{|i| sum += i}
  sum/(array.length)
end

puts average([1, 6]) # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])