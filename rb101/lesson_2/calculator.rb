#calculator.rb

Kernel.puts("Enter two numbers, separated by a space")
nums = Kernel.gets().chomp().split()
nums.map! { |num|  num.to_f }

operators = ['add', 'subtract', 'multiply', 'divide']
op = ''
loop do
  Kernel.puts("Enter add, subtract, multiply, or divide: ") 
  op = Kernel.gets().chomp()
  break if operators.include?(op) == true
end

num1 = nums[0]
num2 = nums[1]
case op
when 'add'
  Kernel.puts("#{num1} + #{num2} = #{num1+num2}")
when 'subtract'
  Kernel.puts("#{num1} - #{num2} = #{num1-num2}")
when 'multiply'
  Kernel.puts("#{num1} * #{num2} = #{num1+num2}")
when 'divide'
  Kernel.puts("#{num1} / #{num2} = #{num1/num2}")
end

