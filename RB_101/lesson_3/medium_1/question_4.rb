def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# yes there is a difference. the difference is that the first method mutates the object referenced by "buffer"
# the second method assigns the input array to a new variable. the variable associated with input_array will not be mutated by the
# actions of the method.