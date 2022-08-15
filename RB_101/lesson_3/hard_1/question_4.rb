def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless do_seperated_words == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

