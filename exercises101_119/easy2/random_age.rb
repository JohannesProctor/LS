#random_age.rb

print "Please enter a name: "
name = gets.chomp
name = 'Teddy' if name.empty?
age = Kernel.rand(20..200)

puts "#{name} is #{age} years old!"
