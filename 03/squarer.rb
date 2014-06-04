require 'pry'
require 'pry-debugger'

print 'Enter a number to squre: '
number = gets.to_i
binding.pry
number = number * number
puts "The square is #{ number }"