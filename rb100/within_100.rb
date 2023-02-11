def between_100(num)
  if 0 <= num && num <= 50 then puts "num between 0-50"
  elsif 51 <= num && num <= 100 then puts "num between 51-100"
  else puts "num greater than 100"
  end
end



puts "enter a number between 0 and 100 inclusive"

num = gets.chomp!.to_i
between_100(num)
