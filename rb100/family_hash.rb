#family_hash.rb
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


#family.each_key {|k| puts k}
#family.each_value {|v| puts v}
#family.each {|k,v| puts "#{k}:#{v}"}

puts "has the name" if family.value?(["jane", "jill", "beth"])


