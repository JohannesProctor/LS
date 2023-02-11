puts "How old are you?"

age = gets.chomp
age.to_i

limit = 40
current = 10

until current >= limit do
  puts "In #{current} years you will be: #{age.to_i + current}"
  current += 10
end

10.times { puts age }

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts first_name + ' ' + last_name
