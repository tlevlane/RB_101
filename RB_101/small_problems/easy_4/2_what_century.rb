=begin

write a method that takes a year and returns the century
the return value should be a string that begins with a number and ends with st, th, rd, or nd

input: year integer
output: the century as a string with the appropriate ending added to it

rules:
- input is integer
- output is string with approriate ending added to it
- 2000 is the twentyth century
- if last digit is 1 st
-if last digit is 2, nd
-if last digit is 3, rd
-if last digit is 4,5,6,7,8,9, th
if last two digits are 00 then the century is one less than year%100
- years must be positive?
Examples
2000 => 19th century
3000 => 29th century

steps
- if year % 100 == 0
  year / 100 - 1 is century
- if year < 100 then it's the first century

=end

def century(year)
  century = ""

  if year < 100
    century << (1).to_s
  elsif year % 100 == 0
    century = (year / 100).to_s
  else
    century = ((year / 100) + 1).to_s
  end

  if century[-1] == '1'
    century << "st"
  elsif century[-1] == '2'
    century << 'nd'
  elsif century[-1] == '3'
    century << 'rd'
  else
    century << "th"
  end
  century
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'
