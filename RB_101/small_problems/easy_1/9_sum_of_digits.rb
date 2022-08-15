def sum(number)
  total = 0
  number.digits.each {|i| total += i}
  total
end
puts sum(23)
puts sum(496)
puts sum(123_456_789) 