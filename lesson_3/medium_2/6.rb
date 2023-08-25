# medium_2 6.rb
=begin
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
=end

def color_valid(color)
  color == "blue" || color == "green" # ? true : false <- not needed.
end

p color_valid("blue")
p color_valid("green")
p color_valid("red")

# Ruby auto evaluates to true/false.