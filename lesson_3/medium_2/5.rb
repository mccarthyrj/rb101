# medium_2 5.rb

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"] # changed from << to reassignment

  return a_string_param, an_array_param # explicit return added
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array) # reassignment of variables to return value of method

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"