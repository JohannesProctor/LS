#stringy_strings.rb

def stringy(num)
  str = ''
  num.times { |i| i.even? ? str << '1' : str << '0' }

  str
end

puts stringy(1)
puts stringy(2)
puts stringy(11)

