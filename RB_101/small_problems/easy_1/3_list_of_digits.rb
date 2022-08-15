def list_digits(number)
  num_arr = number.to_s.split(//)
  num_arr.map{|i| i.to_i}
end

p list_digits(1234)