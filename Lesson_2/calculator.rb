# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets().chomp()
# Kernel.puts(answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end
def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  var = case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
        end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to enter a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid nubmer.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid nubmer.")
    end
  end

  operator_prompt = <<-MSG
       What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt "Thank you for using the calculator. Goodbye!"

=begin
Things to think about:
1) Use Ruby Docs to see if there's a built in method?
2) base is referring to the value passed in the parentheses?
3) Add return key word to each return value? Or reformat the statement?
4) Played with it, works fine
5) We can omit Kernel because we don't need to specify the Kernel class in Ruby
6) Could probably utilize a hash with keys and values?
=end
