def descend(arr)
  arr.sort_by {|el| el.to_i}
end

p descend(['10', '11', '9', '7', '8'])