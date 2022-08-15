DIGITS = {
  0 => '0', 1 => "1", 2 => '2', 3 => "3", 4 => '4',
  5 => "5", 6 => '6', 7 => "7", 8 => '8', 9 => "9"
}

def integer_to_string(integer)
  digits = []
  loop do
    dig = integer % 10
    digits << DIGITS[dig]
    integer = integer / 10
    break if integer == 0
  end

  digits.reverse.sum('')
end

p integer_to_string(3421) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'