def greg_leap_year(year)
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

def jul_leap_year(year)
  if year % 4 == 0
    true
  else
    false
  end
end

def leap_year?(year)
  if year >= 1752
    greg_leap_year(year)
  else
    jul_leap_year(year)
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true