def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(10)

# the purpose of number % divisor is to test if the number is divisible by the divisor without remainder... proof of factorship
# it insures the return value of the method is the array referenced by factors
