def double_odd_index(arr)
  doubled_odd = []
  counter = 0
  
  loop do
    break if counter == arr.size
    current_value = arr[counter]
    current_value *= 2 if counter.odd?
    doubled_odd << current_value
    
    counter += 1
  end
  p doubled_odd
end

my_numbers = [1, 4, 3, 7, 2, 6]

double_odd_index(my_numbers)