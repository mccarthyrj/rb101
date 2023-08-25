# medium_2 2.rb

a = 42
b = 42
c = a

puts a.object_id # all three the same? 42 is 42 is 42, etc. static and unchanging, integers are immutable.
puts b.object_id # this property is shared by true, false, and nil.
puts c.object_id