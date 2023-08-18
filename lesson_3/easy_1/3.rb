# 3.rb
# Replace "important" with "urgent"

puts advice = "Few things in life are as important as house training your pet dinosaur."

def urgent(string)
  arr_string = string.split(' ')
  arr_string.delete_at(6)
  arr_string.insert(6, "urgent")
  arr_string.join(' ')
end

puts urgent(advice)

# actual answer \/

puts advice.gsub!("important", "urgent")

