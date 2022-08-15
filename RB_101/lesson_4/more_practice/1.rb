flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
position = 0

flintstones.each_with_index do |name, index|
  flintstones[index] = [name, index + 1]
end

p flintstones.to_h