def calculate_bonus(salary, bool)
  bonus = 0
  if bool
    bonus = salary / 2 
  end
  bonus
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50005, true) 

=begin

def calculate_bonus(salary,bonus)
  bonus? (salary/2) : 0
end

boolean value before the quation mark determins which side of the : gets opperated. this is known as the ternerary opperator.
