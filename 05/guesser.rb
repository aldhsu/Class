def foo
  puts 'foo'
end

def flush
  $stdout.flush
end

class Guesser
  attr_reader :max_guess, :count

  def initialize(max_guess=100)
    @max_guess = max_guess
    @secret_number = rand(@max_guess)
    @count = 0
  end

  def try(guess)
    @count += 1
    guess == @secret_number
  end

  def foob
    foo
  end

end
flush