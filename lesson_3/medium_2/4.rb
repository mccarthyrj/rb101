# medium_2 4.rb

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# variable an_array_param is local to the method and not available in outside scope.
# my_array variable is local to outside scope and not changed by the method.
# new object created inside tricky_method_two when an_array_param is assigned to ['pumpkins', 'rutabaga']