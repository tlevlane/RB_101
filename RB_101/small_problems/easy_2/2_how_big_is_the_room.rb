puts "Please enter the length of the room in meters"
length = gets.chomp
puts "Please enter the width of the room in meters"
width = gets.chomp

sqr_meters = length.to_f * width.to_f

sqr_feet = sqr_meters * 10.7639

puts "the area of the room is #{sqr_meters} (#{sqr_feet} square feet)."