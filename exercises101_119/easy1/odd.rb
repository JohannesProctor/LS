#odd.rb

def is_odd?(num)
  num % 2 == 1
end

def is_odd(num)
  num >= 0 ? num.remainder(2) == 1 : num.remainder(2) == -1
end
