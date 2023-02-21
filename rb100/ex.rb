contact_data = ["joe@email.com", "123 Main st." , "555-123-4567"]
contacts = {"Joe Smith" => {} }

puts contacts["Joe Smith"].class
contacts.each do |name, hash|
  [:email, :address, :phone].each do |sym|
    #puts contact.class
    hash[sym] = contact_data.shift
  end
end

puts contacts
