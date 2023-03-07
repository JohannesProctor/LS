#right_triangles.rb


def triangle1(n)
  space = n
  (n+1).times do |star|
    puts '*'*star + ' '*space
    space -= 1
  end
end

def triangle2(n)
  space = n
  (n+1).times do |star|
    puts " "*space + "*"*star
    space -= 1
  end
end

def triangle3(n)
  star = n
  (n+1).times do |space|
    puts  '*'*star + ' '*space
    star -= 1
  end
end


def triangle4(n)
  star = n
  (n+1).times do |space|
    puts ' '*space + '*'*star
    star -= 1
  end
end
  
