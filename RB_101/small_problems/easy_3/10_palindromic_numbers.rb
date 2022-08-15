def palindromic_number?(number)
  num_str = number.to_s
  num_str == num_str.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)