# 5.rb
# Pragmatically determine if 42 is between 1 and 10.

numbers = (10..100).to_a

def forty_two?(number_range)
  number_range.each { |num| p num == 42 }
end

forty_two?(numbers)

# actual answer \/ Range#cover? returns true if given object is within the range provided.

p (10..100).cover?(42)