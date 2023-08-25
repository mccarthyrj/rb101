# medium_1 7.rb

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts munsters
puts ''
mess_with_demographics(munsters)
puts ''
puts munsters

# I can't quite figure out why exactly this changes the hash passed into the method.
# what is meant by ruby storingn the object_ids of each argument?
# I think it has something to do with the explicit assignment but I'm not positive.
# Need further help with this one, look at forum.