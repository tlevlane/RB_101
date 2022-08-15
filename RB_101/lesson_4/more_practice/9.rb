words = "the flintstones rock"
def titleize(string)
  str_arr = words.split
  str_arr.map{|word| word.capitalize}.join(" ")
end
