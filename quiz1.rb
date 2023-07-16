=begin

*this one works

def string_lengths(sentence)
  strings = sentence.split
  strings.map { |chars| chars.length }
end


*this one doesn't work. method scope issue?

def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

*this one works too; what is the syntax on line 29 for words[counter]??

def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0
  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end
  word_lengths
end

=end

def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1
  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end
  lengths
end

p string_lengths('To be or not to be')