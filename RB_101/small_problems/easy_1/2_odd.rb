def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number
end
    
def odd(number)
  if number < 0
    number = number * - 1
  else
  end
  if number % 2 != 0
    true
  else
    false
  end
end


num = ""
loop do 
  prompt("Please enter a number to test")
  loop do
    num = gets.chomp
    if valid_number?(num)
      num = num.to_i
      break
    else
      prompt("Sorry that is not a valid integer. Please enter another number")
    end
  end

  puts odd(num)
  prompt("Would you like to test another number?")
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end




