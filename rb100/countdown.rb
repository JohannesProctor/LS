def count_down(num)
  if num < 0
    puts "error, please give positive number"
    return
  end

  while num >= 0
    puts num
    num -= 1
  end
  puts "blast off!"
end


puts "please enter a number greater than 0"

num = gets.chomp.to_i

count_down(num)


