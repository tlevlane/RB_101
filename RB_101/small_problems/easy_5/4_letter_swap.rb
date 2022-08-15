=begin
given a string of words seperated by spaces, write a methof that takes the string
of words and returns a string where the first and last letters of every word are
swapped

assume every word contains at least one letter and theat the string always contains
at least one word. assume each string contains nothing byt words and spaces

input: a string of words seperated by words and spaces
output: a string of words where the first and last letters of every word are 
swapped

rules:
-first and last letters of every word are swapped
t: may need to create a shallow copy of elements of array
-very input contains at least one letter
-every string contains at least one word
-strings contain nothing but words and phrases

step:
- break the string into and array 
- create a shallow copy of that array
- itterate through array with map
- replace [0] of original string with [-1] of shallow copy and vis a vis using
arr[ele] = method
- assign return value of map to a variable
- transform the string array into a string
- return that value

=end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(" ")
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'