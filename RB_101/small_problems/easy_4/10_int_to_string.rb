DIGITS = {
  0 => '0', 1 => "1", 2 => '2', 3 => "3", 4 => '4',
  5 => "5", 6 => '6', 7 => "7", 8 => '8', 9 => "9"
}

def signed_integer_to_string(integer)
  if integer > 0
    sign = "+"
  elsif integer < 0
    integer *= -1
    sign = '-'
  else
    sign = ""
  end

  digits = []
  loop do
    dig = integer % 10
    digits << DIGITS[dig]
    integer = integer / 10
    break if integer == 0
  end

  string = digits.reverse.sum('')
  string.prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'