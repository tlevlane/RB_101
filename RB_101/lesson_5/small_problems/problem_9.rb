arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

def descend(array)
  array.map do |inner_arr|
    inner_arr.sort{|a, b| b<=>a}
  end
end
p descend(arr)