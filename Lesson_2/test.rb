#a method that returns the sum of two integers
#store inside of a method:
#a parameter for the first value
#a parameter for the second value
#and the sum of the two values

#START

#Return the sum of two integers
#SET sum_method(num1, num2)
#PRINT sum of num1 and num2

#def sum(num1, num2)
#  num1 + num2
#end

#puts sum(1, 5)

#START
#Given an array of strings
#Iterate through the array
#  -remove each element in the array one by one
#  -as each element returns,

strings = ['cat', 'dog', 'bird']

def pop_it_print(array)
  array.each do |idx, idx2, idx3|
    puts idx + idx2 + idx3
  end
end

pop_it_print(strings)


