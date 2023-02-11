require 'pry'

def factorial(n)
  return 1 if n==0

  return n *= factorial(n-1)
end

a = factorial(9)

puts a
