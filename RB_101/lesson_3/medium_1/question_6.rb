answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# => 34, the method does not mutate the variable passed to the argument because the += opperator does not mutate.
# also, numbers are immutable. 