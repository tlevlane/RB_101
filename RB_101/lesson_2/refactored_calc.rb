require 'yaml'
MESSAGES = YAML.load_file('c.yml')

# ask user for two numbers
# ask user for operation
# perform operation
# output the result

def prompt(message)
  Kernel.puts("=> #{message} ")
end

def number?(n)
  n.to_i.to_s == n
end

def float?(n)
  n.to_f.to_s == n
end

# in number? we wish to verify the input is a float or integer.
# take input string and test if it passes to_f (does this work on strings with decimals?)
# if input passes number verify test and has a decimal point we return input with .to_f
# if input passes number verify but doesn't have decimal, we return input with .to_i



def operation_to_message(op)
  word = case op
         when "1"
           "Adding"
         when "2"
           "Subtracting"
         when "3"
           "Multiplying"
         when "4"
           "Dividing"
         end

  x = "extra extra read all about it"

  word
end

prompt("Welcome to calculator. Please enter your name.")
name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

loop do
  num1 = ""
  loop do
    prompt("Please enter a number")
    num1 = Kernel.gets().chomp()
    if number?(num1)
      break
    else
      prompt("Hmm that doesn't look like a valid number")
    end
  end

  num2 = ""
  loop do
    prompt("Please enter a second number")
    num2 = Kernel.gets().chomp()
    if number?(num2)
      break
    else
      prompt("Hm that doesn't look like a valid number")
    end
  end
  operator_prompt = <<-MSG
  What operation would you like to perform?
  1)add
  2)substract
  3)multiply
  4)divide
MSG
  prompt(operator_prompt)

  operation = ""
  loop do
    operation = gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers.")

  result = case operation
           when "1"
             num1.to_i + num2.to_i
           when "2"
             num1.to_i - num2.to_i
           when "3"
             num1.to_i * num3.to_i
           else
             num1.to_f / num2.to_f
           end

  prompt("The result it #{result}")
  prompt("Do you want to perform another calculation?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
