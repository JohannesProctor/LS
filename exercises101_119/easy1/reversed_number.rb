#reversed_number.rb

def reversed_number(num)
  new_num = num.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
