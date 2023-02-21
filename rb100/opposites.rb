#opposites.rb

def valid_number?(str)
  str.to_i.to_s == str && str.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  num1 = gets.chomp
  
  puts ">> Please enter a positive or negative integer:"
  num2 = gets.chomp

  if !valid_number?(num1) || !valid_number?(num2)
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end
  
  num1 = num1.to_i
  num2 = num2.to_i

  if num1*num2 > 0
    puts ">> Sorry. One integer must be positive, one must be negative."
    next
  end
  
  puts "#{num1} + #{num2} = #{num1+num2}"
  break
end
