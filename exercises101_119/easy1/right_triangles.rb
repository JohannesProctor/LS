#right_triangles.rb

def triangle(n)
  space_count = n
  (n+1).times do |star_count|
    puts " "*space_count + "*"*star_itr
    space_count -= 1
  end
end
