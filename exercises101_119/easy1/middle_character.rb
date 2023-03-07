#middle_character.rb


def center_of(string)
  len = string.length
  mid = len/2
  len.odd? ?  string[mid] : string[mid-1..mid]
end
