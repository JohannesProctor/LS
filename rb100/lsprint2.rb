#lsprint2.rb
def print_lines(num)
  num.times { puts "Launch School is the best!" }
end

loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (q to quit):"
  num = gets.chomp
  
  break if num.downcase == 'q'
  
  num = num.to_i

  if num < 3
    puts "Thats not enough lines."
    next
  end
  
  print_lines(num)

end
