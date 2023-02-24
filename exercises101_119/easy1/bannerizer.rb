#bannerizer.rb

def print_upper_border(len)
  print '+-'
  len.times { print '-' }
  print "-+\n"
  
  print '| '
  len.times { print ' ' }
  print " |\n"
end

def print_lower_border(len)
  print '| '
  len.times { print ' ' }
  print " |\n"
  
  print '+-'
  len.times { print '-' }
  print "-+\n"
end

def print_string_border(str)
  print '| '
  print str
  print " |\n"
end

def print_in_box(str='')
  len = str.length
  print_upper_border(len)
  print_string_border(str)
  print_lower_border(len)
end

print_in_box('To boldy go where no one has gone before.')

print_in_box

print_in_box('hello world')
