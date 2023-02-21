#password.rb

pw = "hello_world"
loop do
  puts ">> Please enter your password: "
  password = gets.chomp
  if password != pw
    puts "invalid password!"
  else
    puts "welcome!"
    break
  end

end
