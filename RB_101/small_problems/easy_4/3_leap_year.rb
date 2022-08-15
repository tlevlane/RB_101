=begin
write a method that takes any year greater than 0 and returns whether or not that
year is a leap year.

input: year as an integer
output: true if leap year false if not

rules:
- a leap year is any year that's divisible by 4 unless the year is also divisible
100
-if year is evenly divisible by 100 it is only a leap year if it's also divisible by
400
- so any year divisible by 400 is a leap year
- if not, than a year that's divisible by 4 and 100 is a not a leap year
- else if it's divisible by 4 than it is a leap year

steps:
test the number based on the logic, return true or false accordingly

=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif ((year % 4 == 0) && (year % 100 == 0))
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true