#calculator.rb

op_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
MSG

def prompt(msg)
  Kernel.puts("=> #{msg}")
end


def get_num
  num = ''
  loop do
    num = Kernel.gets().chomp()
    return 0 if num == '0'

    if num.to_i != 0
      return num.to_f
    else
      prompt("Error, invalid number. Please try again")
    end
  end
end

def get_operator()
  op = ''
  operators = ['1','2','3','4']
  loop do
    op = Kernel.gets().chomp()

    if operators.include?(op)
      return op
    else
      prompt("Invalid operator. Please enter 1, 2, 3, or 4")
    end
  end
end

def calculate(num1, num2, op)
  case op
  when '1'
    prompt("#{num1} + #{num2} = #{num1+num2}")
  when '2'
    prompt("#{num1} - #{num2} = #{num1-num2}")
  when '3'
    prompt("#{num1} * #{num2} = #{num1+num2}")
  when '4'
    prompt("#{num1} / #{num2} = #{num1/num2}")
  end
end

def ask_again
  prompt("Would you like to perform another calculation? (Y or N)")
  response = Kernel.gets().chomp().downcase()
  response == 'y'
end


#main

prompt("Welcome to Calculator!")

loop do
  prompt("Please enter the first number")
  num1 = get_num()
  prompt("Please enter the second number")
  num2 = get_num()

 prompt(op_prompt)
  op = ''
  op = get_operator()
  calculate(num1, num2, op)
  ask_again() ? next : break
end

prompt("Thank you for using calculator. Goodbye!")
