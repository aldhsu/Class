oldhash = {
  1 => %W(A E I O U L N R S T),
  2 => %W(D G),
  3 => %W(B C M P),
  4 => %W(F H V W Y),
  5 => %W(K),
  8 => %W(J X),
  10 => %W(Q Z),
}

newhash = {}
ordered = {}
oldhash.each_pair do |key, values|
  values.each do |value|
    newhash[value.downcase] = key
  end
end

("a".."z").each do |letter|
  ordered[letter] = newhash[letter]
end

puts ordered
