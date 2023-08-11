# odd.rb

def is_odd?(num)
  num.remainder(2) != 0
end

puts is_odd?(3)
puts is_odd?(2)
puts is_odd?(100)
puts is_odd?(-301)