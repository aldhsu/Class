def calculate(*args)
	puts args[-1].values[0]

end

def add (*numbers)
  result = 0
  numbers.each do |x|
    result += x
  end
  return result
end

def subtract (*numbers)
  result = numbers.shift
  numbers.inject(result) {|result, number| result - number}
end

puts calculate(5,2, add: true)