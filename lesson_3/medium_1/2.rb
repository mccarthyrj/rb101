# medium_1 2.rb

# puts "the value of 40 + 2 is " + (40 + 2) <= original with error, can't use integers like strings

puts "the value of 40 + 2 is #{(40 + 2)}" # <= solution 1 using Integer#to_s

puts "the value of 40 + 2 is " + (40 + 2).to_s # <= solution 2 using string interpolation