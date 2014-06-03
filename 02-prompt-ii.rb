print "what is 2 to the 16th power"
answer = gets.to_i

until 2**16 == answer
	# print "Wrong, please try again. "
	if answer > 2**16
		print "Wrong guess lower"
	else answer < 2**16
		print "Wrong guess higher"
	end
	answer	= gets.to_i
end

puts "Good job, you're a champ!"