=begin

write a method that takes two strings as arguments. compares the two then makes a new string 
that concatenates the strings, short, long, short. the return value is this short long short

input:
two strings of different lengths
Q: what happens if the strings are the same length?

output: one string with three strings concatenated, short, long short

rules:
-two strings are taken as arguments
-two strings are compared
-based on the result of the comparison, strings are combined into a new string
-new string is short string plus long string plus short string


steps:
-store strings in an array
-sort array by length of elements
-create new string according to desired formula

=end

def short_long_short(word1, word2)
  arr = [word1, word2]

  sort_arr = arr.sort_by{|string| string.length}
  s_l_s = sort_arr[0] + sort_arr[1] + sort_arr[0]
  s_l_s
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
