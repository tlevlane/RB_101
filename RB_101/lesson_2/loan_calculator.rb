
# refactor this make it more user friendly like the other calc
# also be sure to print monthly interest rate and loan duration in months
# for extra challenge, ask for percentage as a percent and convert same with duration
# for extra extra challenge, build it so it will accept both percentage or decimal, read input and decide what to do

def prompt(string)
 puts "=> #{string}"
end

prompt("Hello, Welcome to the Loan Calculator!")

loop do 
  prompt("What is the size of your loan?")
  loan_amount = gets.chomp
  loan_amount = loan_amount.to_i

  prompt("What is your APR?(Please use percent)")
  apr = gets.chomp
  apr = apr.to_f
  apr = apr / 100

  prompt("What is the duration of the loan? (number of months)")
  duration = gets.chomp
  duration = duration.to_i

  mir = apr/12

  monthly_payment = loan_amount * (mir/(1-(1 + mir) ** (-1 * duration)))

  monthly_interest_rate = mir * 100

  prompt("Your monthly payment is #{monthly_payment}.")
  prompt("Your monthly interest rate is #{monthly_interest_rate}.")
  prompt("Your loan will last for #{duration} months.")

  prompt("Would you like to calculate another loan?")
  again = gets.chomp

  break unless again.downcase.start_with?("y")
end

