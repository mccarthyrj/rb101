# 7.rb
# Un-nest the array

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones
flintstones.flatten!
p flintstones