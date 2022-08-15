=begin
write two methods that each take a time of day in 24hr formate and return the number
of minutes before and after midnight respectively. 
both methods shoudl return the value in the range (0.. 1439)

input: a string of the format (hh:mm)
output: an integer representing the number of minutes before or after midnight
respective to the method called.

rules:
-may not use the date and time methods

steps:
- need to convert a string into an int
-two seperate methods
  - 
=end

def string_conv(str)
  arr = str.split(":").map{|i| i.to_i}
  arr
end

def after_midnight(str)
  if str == "24:00" || str == "00:00"
    0
  else
    hr_min = string_conv(str)
    minutes = (hr_min[0] * 60) + hr_min[1]
  end
end

def before_midnight(str)
  if str == "24:00" || str == "00:00"
    0
  else
    hr_min = string_conv(str)
    if hr_min[1] > 0
      hr_60 = (24 - (hr_min[0] + 1)) * 60
    else 
      hr_60 = (24 - hr_min[0]) * 60
    end
    final = hr_60 + (60 - hr_min[1])
  end
end

