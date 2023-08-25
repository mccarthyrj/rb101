# easy_2 4.rb

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("dino") # <= not the provided answer, but same output
p advice.match?("dino") # <= provided answer; will also return any substring with these characters