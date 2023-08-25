# easy_2 1.rb
ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}
p ages.value?("Spot") # <= not this one; this is searching for a value and not a key.
p ages.has_key?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")
p ages.include?("Spot")