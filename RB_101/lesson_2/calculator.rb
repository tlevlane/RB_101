#ask user for two numbers
#ask user for operation
#perform operation
#output the result

#num1 = Kernel.gets()
#Kernel.puts(num1)

Kernel.puts("Welcome to calculator")
Kernel.puts("Please enter a number")
num1 = Kernel.gets().chomp()

Kernel.puts("Please enter a second number")
num2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1)add 2)substract 3)multiply 4)divide")
operation = gets().chomp()

if operation == "1"
  result = num1.to_i() + num2.to_i()
elsif operation == "2"
  result = num1.to_i() - num2.to_i()
elsif operation == "3"
  result = num1.to_i() * num3.to_i()
else 
  result = num1.to_f / num2.to_f
end

Kernel.puts(result)