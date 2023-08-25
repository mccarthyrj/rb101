# stringy_string.rb

def stringy(size, default = 1)
  numbers = []

  size.times do |num|
    if default == 1
      number = num.even? ? 1 : 0
    elsif default == 0
      number = num.even? ? 0 : 1
    end
    
    numbers << number
  end

  numbers.join
end

puts stringy(6)
puts stringy(9, 0)
puts stringy(4)
puts stringy(7, 0)