# 6.rb

# Show two ways to insert "Four score and" into string

famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")

p famous_words

famous_words = "seven years ago..."

famous_words.prepend('Four score and ')

p famous_words

# also "Four score and " + or << famous_words