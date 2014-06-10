require_relative 'guesser'
require 'pry'
require 'pry-debugger'
foo
game = Guesser.new
game.foob
puts "Welcome to the guessing game, please guess the secret number which is less than #{game.max_guess}"
guess = gets.chomp.to_i
until game.try(guess)
  puts "Try again"
  puts "You have made #{game.count} guesses"
  flush
  guess = gets.chomp.to_i
end
