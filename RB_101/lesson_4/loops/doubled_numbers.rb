def doubled_numbers!(array)
  counter = 0
  loop do
    break if counter == array.size
    array[counter] = array[counter] * 2
    counter += 1
  end
  array
end

a = [1, 2, 3, 4]
doubled_numbers!(a)