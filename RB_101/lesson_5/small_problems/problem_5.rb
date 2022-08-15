munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def male_age_sum(hash)
  sum = 0
  hash.each do |key, inner_hash|
    if inner_hash["gender"] == "male"
      sum += inner_hash['age']
    end
  end
  sum
end

p male_age_sum(munsters)