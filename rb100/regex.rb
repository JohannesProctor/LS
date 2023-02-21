def check_expr(str, expr)
  if expr =~ str
    puts "#{expr} is in #{str}"
  else
    puts "#{expr} is not in #{str}"
  end

end


strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

strings.each do |word|
  check_expr(word, /lab/)
end
