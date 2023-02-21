#division.rb

def valid_number?(num_str)
  num_str.to_i.to_s == num_str
end

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  if !valid_number?(numerator)
    puts ">> Invalid input. Only integers are allowed."
    next
  end

  puts ">> Please enter the denominator:"
  denom = gets.chomp
  if !valid_number?(denom)
    puts ">>Invalid input. Only integers are allowed."
    next
  end

  puts "#{numerator} \/ #{denom} is #{numerator.to_i/denom.to_i}"
  break
end


