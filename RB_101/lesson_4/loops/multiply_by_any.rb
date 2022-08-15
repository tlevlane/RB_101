def multiply_by_any(array, multiple)
  multiplied = []
  counter = 0

  loop do
    break if counter == array.size
    multiplied[counter] = array[counter] * multiple
    counter += 1
  end

  p multiplied
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply_by_any(my_numbers, 3)