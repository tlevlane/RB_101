def oddities(arr)
  index = 0
  odds = []
  while index < arr.size()
    odds << arr[index]
    index +=2 # given solution is more effective expression of logic to get the required result
  end
  odds
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])