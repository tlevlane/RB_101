DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_signed_integer(string)
  if string.start_with?('+')
    string.delete! "+"
  elsif string.start_with?('-')
    sign = -1
    string.delete! '-'
  end

  digits = string.chars.map{|i| DIGITS[i]}
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  
  if sign == -1
    value * -1
  else
    value
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100