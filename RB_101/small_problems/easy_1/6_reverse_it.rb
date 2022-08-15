def reverse_words(string)
  string = string.split
  string.map do |i|
    if i.length >= 5
      i.reverse!
    end
  end
  string.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS