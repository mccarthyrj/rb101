# easy_2 7.rb

flintstones = %w(Fred Wilma Barney Betty BamBam Pebbles)

p flintstones.union(["Dino", "Hoppy"]) # <= not the provided answer, but gives same output

# provided answers

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.push("Dino", "Hoppy")  # push can take multiple arguments
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item