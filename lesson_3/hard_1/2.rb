# hard_1 2.rb

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there", string referenced and modified by String#<<
puts greetings # => {a=>"hi there"} outputs original hash as modified by String#<<
