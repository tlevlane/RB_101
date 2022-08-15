# create a hash that uses the string from the array as symbol and assigns +=1 for each occurance
# method returns a hash, referenced to outer scope through variable. 

def count_occurrences(arr)
  occurences = {}
  arr.uniq.each do |i| #.uniq returns array eliminating duplicates. does not mutate arr, therefore arr in line 7 works as intended with count
    occurences[i] = arr.count(i) #.count is array method that counts number of elements, if arg given, it'll count number of elements == to arg
  end
  occurences.each do |name, count|
    puts "#{name} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)