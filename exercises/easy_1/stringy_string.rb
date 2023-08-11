# stringy_string.rb

def stringy(size)
  numbers = []
  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6)
puts stringy(5)
puts stringy(10)
puts stringy(3)