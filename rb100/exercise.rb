
loop do
  puts "please enter a number, type 'quit' to exit"
  num = gets.chomp
  break if num == 'quit'
  puts num.to_i

end
