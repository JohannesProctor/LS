#count_down_recursion.rb

def cd(num)
  if num < 0
    puts "error, negative number" if num < 0
    return
  end  
  puts num
  if num == 0
    return
  end
  cd(num-1)
end


cd(10)
cd(-1)
