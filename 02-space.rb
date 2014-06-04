def area (length, width)
	a = length * width
	puts "The length is #{ length}"
	puts "The width is #{ width }"
	puts "The area is #{ a }"
	a
end

def volume (length,width, height)
	volume = length * width*height
end

def square (x)
	x ** 2
end

def cube (x)
	x ** 3
end

def name_tag_generator(first, last, gender, age)
	if gender == 'f'
		if age < 19
			"Miss #{first} #{last}"
		elsif age > 80
			 "Old Lady #{ last }"
		else
			 "Ms #{first} #{last}"
		end
	else
		 "Mr #{last}"
	end
end
				