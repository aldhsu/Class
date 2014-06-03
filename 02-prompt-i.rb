print "How old are you? "
age = gets.chomp.to_i

if age >= 18
	puts "You can buy your own beer"
else
	puts "You need an adult to buy beer for you"
end