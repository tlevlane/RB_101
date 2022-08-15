puts "what is the bill?"
bill = gets.chomp

puts "what is the tip percentage?"
percent = gets.chomp

tip = bill.to_f * (percent.to_f / 100)
total = bill.to_f + tip

puts "The tip is $#{tip}."
puts "The total is $#{total}"

