arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

def el_divisible_3(array)
  array.map do |sub|
    sub.select{|i| i % 3 == 0}
  end
end

p el_divisible_3(arr)
