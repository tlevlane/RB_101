statement = "The Flintstones Rock"
letter_count = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  letter_count[letter] = letter_frequency if letter_frequency > 0
end

