# medium_2 3.rb NEED TO RETURN TO THIS ONE

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0 # bonus 1: purpose of modulo '0' is to find numbers without remainder.
    divisor -= 1
  end
  factors # bonus 2: purpose of calling factors is to make sure it is the return value of the method.
end

p factors(64)
p factors(0)
p factors(100)