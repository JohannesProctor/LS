#login.rb

USER_NAME = "hello"
PASSWORD  = "world"
loop do
  puts ">> Please enter user name:"
  name = gets.chomp

  puts ">> Please enter your password:"
  pw = gets.chomp

  break if name == USER_NAME && pw == PASSWORD
  
  puts ">> Authorization failed!"
end

puts "Welcome!"
