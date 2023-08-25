# medium_1 1.rb


statement = "The Flintstones Rock!"

count = 0

loop do
  count += 1
  statement.insert(0, ' ')
  puts statement
  break if count == 10
end

# ^ bad multi-line version, need to reread the question

10.times { puts statement.insert(0, " ") }

# ^ better one-line version

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# ^ provided answer
