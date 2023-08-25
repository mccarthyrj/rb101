# easy_2 8.rb

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!("Few things in life are as important as ")
# p advice.slice!(0, 39) <= another option I found after calling String#length to find the index number.
# p advice.slice!(0, advice.index('house')) <= proviced answer

p advice

#if using String#slice (non-destructive) a new string consisting of the passed argument will return.