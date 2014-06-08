class Guesser
  def initialize(max_guess=100)
    @max_guess = max_guess
    @secret_number = rand(@max_guess)
  end

  def try(guess)
    guess == @secret_number
  end
end