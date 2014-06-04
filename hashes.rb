a = ["Anil", "Erik", "Jonathan"]
a[1]
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts h[1]
puts h[2]

puts h["two"]

h[3] = "three"

p h

h[ :four ] = 4
p h

is = {true => "It's true!", false => "It's false"}

p is[2+2 == 4]

p is[0]

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

p users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers] << 3
p users["Erik"][:favorite_numbers]

p users ["Anil"][:favorite_numbers].select{|x| x.even?}
puts "Common begin"
common = nil
users.keys.each do |key|
  common ||= users[key][:favorite_numbers]
  common = common & users[key][:favorite_numbers]
end
puts "Common are"
puts common