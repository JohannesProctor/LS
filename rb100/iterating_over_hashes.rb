person = {
  name: 'john',
  height: '5 ft 6',
  weight: '165 lbs',
  hair: 'black'
}


person.each do |k,v|
  puts "John's #{k} is #{v}"
end
