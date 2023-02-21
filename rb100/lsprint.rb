#lsprint.rb

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  inp = gets.chomp.to_i
  if inp < 3
    puts "That's not enough lines"
    next
  end

  inp.times do
    puts "Launch School is the best!"
  end

  break
end
