class Scrabble
  #word multipliers at the end currently only takes one word modifier
  #letter multipliers put before letter
  def self.score(word)
    word = word.upcase!
    score = 0
    letter_value = {
      1 => ['A','E','I','O','U', 'L','N', 'R', 'S', 'T'],
      2 => ['D','G'],
      3 => ['B','C','M','P'],
      4 => ['F','H','V','W','Y'],
      5 => ['K'],
      8 => ['J','X'],
      10 => ['Q','Z']
    }
    letter_modifier = 1
    word.each_char do |letter|
      letter_value.each_pair do |key, value|
        score += key * letter_modifier if value.include?(letter)
        end
      letter_modifier = 1
      letter_modifier = letter.to_i if letter.to_i > 0
    end
    word_modifier = 1
    word_modifier = word[-1].to_i if word[-1].to_i > 0
    score = word_modifier * score
    return score
  end

end

puts Scrabble.score("cabbage")