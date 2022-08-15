arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

def increment(array)
  array.map do |hash|
    hash_inc ={}
    hash.map do |_,value|
      hash_inc[_] = value + 1
    end
    hash_inc
  end
end

p increment(arr)

=begin
in this problem I ran into some issues. first, I forgot the hash assignment 
method: hash[key] = value as a process to update the hash I was working in.
then I forgot to use the incremented hash as the return value to the method.

=end
