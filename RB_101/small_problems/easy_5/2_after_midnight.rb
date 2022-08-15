=begin
the time of day can be represented as the number of minutes before or after midnight
if the number of minutes is positive, the time is after mifnight. 
if the number of minutes is negative, the time is before midnight

write a method that takes time using minute-based format and returns the time of day
in 24 hours format (hh:mm). method must work with an integer input

input: a positve or negative integer representing number of minutes
t: minutes / 60 will give number of hours to subtract minutes % 60 will give minutes
t: logic gates based on the negative or positive values
output: string in "hh:mm" format representing the time of day based on positive or
negative number

rules:
- input integer
- output a string
- if value is greater or less than 24 then it restarts back to zero
- cannot use Date or Time classes

steps:
- consider integers sign - or + as to decide what to do with 
- save value of minutes / 60 to hour variable
  -if result is greater than 24 then hours = hours % 24
- save value of minutes % 60
- convert the hours and minutes into string equivalents (hh, mm)
  -use a digits array
  -if value of hours or minutes is less than or equal to 9, append a zero in front
-add hours + ":" + minutes

=end

def time_of_day(minutes)
  if minutes < 0
    minutes *= -1
    if minutes / 60 > 24
      hours = (minutes / 60) % 24
    else
      hours = minutes / 60
    end
    min = minutes % 60

    hr_time = 24 - (hours + 1)
    if min == 0
      min_time = 00
    else 
      min_time = 60 - min
    end

    if min_time >= 0 && min_time < 10
      min_time = "0#{min_time}"
    end

    if hr_time >= 0 && hr_time < 10
      hr_time = "0#{hr_time}"
    end

  elsif minutes > 0
    if minutes / 60 > 24
      hours = (minutes / 60) % 24
    else
      hours = minutes / 60
    end
    min = minutes % 60

    hr_time = hours
    min_time = min

    if min_time >= 0 && min_time < 10
      min_time = "0#{min_time}"
    end

    if hr_time >= 0 && hr_time < 10
      hr_time = "0#{hr_time}"
    end
  else 
    hr_time = "00"
    min_time = "00"
  end
  time_str = "#{hr_time}:#{min_time}"
  time_str
    
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) == "01:29"