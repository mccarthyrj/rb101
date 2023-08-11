# Car Loan Calculator
# Get the loan amount
# Get the APR
# Get the loan length in years
# Give the monthly interest rate
# Give loan length in months
# Give monthly payment
# month_payment = loan_amount *
#                 (month_interest / (1 - (1 + month_interest)**(- loan_dur)))

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

name = ''
loop do
  prompt("Welcome to the Car Loan Calulator! Enter name: ")
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  loan_amount = ''
  loop do
    prompt("How much would you like to borrow? Enter a positve whole number.")
    loan_amount = Kernel.gets().chomp()

    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid amount.")
    end
  end

  annual_rate = ''
  loop do
    prompt("What interest rate do you qualify for?
           Enter a positve whole number.")
    annual_rate = Kernel.gets().chomp()
    if valid_number?(annual_rate)
      break
    else
      prompt("Please enter a valid rate.")
    end
  end

  loan_duration = ''
  loop do
    prompt("How many years would you like to finance the loan?")
    loan_duration = Kernel.gets().chomp()
    if valid_number?(loan_duration)
      break
    else
      prompt("Please enter a valid number of years.")
    end
  end

  monthly_rate = ((annual_rate.to_f() / 100) / 12).to_f()
  loan_months = loan_duration.to_i * 12
  monthly_payment = loan_amount.to_i *
                    (monthly_rate / (1 - ((1 + monthly_rate)**(- loan_months))))

  result_prompt = <<-MSG
  Ok, #{name}:
  ==>>  For a $#{loan_amount} loan...
  ==>>  At #{annual_rate}% interest...
  ==>>  Paid over #{loan_duration} years...
  ==>>  Your monthly payment will be $#{monthly_payment.round(2)}.
  ==>>  This amount will be due every month for #{loan_months} months.
  ==>>  The amount of interest you pay every month will be #{monthly_rate.round(4)}%.
  MSG

  prompt result_prompt

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt "Thank you for using the calculator. Goodbye!"
