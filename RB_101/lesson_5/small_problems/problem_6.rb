munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def print_munsters(hash)
  hash.each do |name, inner_hash|
    age = inner_hash["age"]
    gender = inner_hash["gender"]
    puts "#{name} is #{age}-years-old #{gender}"
  end
end

print_munsters(munsters)

=begin
a faster method below. this solution works on the fact that methods can be called on
objects within #{}

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end
=end

