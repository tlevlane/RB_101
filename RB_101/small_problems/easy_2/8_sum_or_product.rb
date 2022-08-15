puts "Please enter an integer greater than 0:"
int = gets.chomp
int = int.to_i

puts "Enter 's' to compute sum or 'p' to compute product"
calc = gets.chomp

result = 0
if calc == "s"
  calc = "sum"
  1.upto(int) {|i| result += i}
elsif calc == 'p'
  result = 1
  calc = "product"
  1.upto(int) {|i| result *= i}
end

puts "The #{calc} of the integers between 1 and #{int} is #{result}."