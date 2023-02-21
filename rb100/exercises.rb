a = [1,2,3,4,5,6,7,8,9,10]

a.each { |n| puts n if n > 5}

odds = a.select { |n|  n%2 == 1}
puts odds

odds << 11
odds.unshift(0)

odds.pop()
odds << 3

puts "new odds"
puts odds
puts "uniq vals"
puts odds.uniq!


hash1 = {cat: "mittens"}
hash2 = {:dog => "boktungkee"

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {} }}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }}

contacts.each do |contact|
  [:email, :address, :phone].each do |sym|
    contact[sym] = contact_data.shift
  end
end
