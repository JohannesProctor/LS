#mortgage_calculator.rb

def prompt(msg)
  puts ">> #{msg}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def validate(input)
  if !number?(input) 
    prompt("Error, please enter a valid number")
    return false
  end

  return true
end

def get_loan_amt
  prompt("Please enter your principal loan amount. If it is $100,000, type 100000")
  amt = ''
  loop do
    amt = gets.chomp
    validate(amt) ? break : next
  end

    prompt("You entered $#{amt}")
    return amt
end

def get_apr
  prompt("Please enter your APR. If it is 5%, put 5. If it is 5.2%, put 5.2")
  apr = ''
  loop do
    apr = gets.chomp
    validate(apr) ? break : next
  end
  
  prompt("You input #{apr}% APR")
  apr = (apr.to_f/100).to_s
end

def get_duration
  prompt("Please enter the duration of your payments in the form 'yr mo'")
  prompt("For example, if your mortage is for 10 years and 5 months, put '10 5' without quotes")

  dur = []
  loop do
    dur = gets.chomp.split
    (validate(dur[0]) && validate(dur[1])) ? break : next
  end

  prompt("Your mortgage is for #{dur[0]} years and #{dur[1]} months")
  return dur
end


def calculate_monthly_payment(principal_amt, apr, duration)
  amt = principal_amt.to_f
  apr_monthly = apr.to_f / 12
  dur_in_months = duration[0].to_f*12 + duration[1].to_f

  monthly_payment = amt * ( apr_monthly / ( 1 - (1 + apr_monthly) ** (-1*dur_in_months)) )
end

#main
prompt("Hello, I will assist you in calculating your mortgage payments per month.")

loop do
  loan_amt = get_loan_amt()
  apr = get_apr()
  dur = get_duration()

  monthly_payment = calculate_monthly_payment(loan_amt, apr, dur)
  prompt("Your monthly payment would be #{monthly_payment}")

  prompt("Would you like to calculate another mortgage payment? Y or N")
  response = gets.chomp.downcase

  response == 'y' ? next : break
end

prompt("Thank you for using Mortgage Calculator. Goodbye!")
