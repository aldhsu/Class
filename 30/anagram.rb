class Anagram
  def self.check(word, array)
    letters = word.split("").sort
    answers =[]
    array.each do |word2|
      answers << word2 if word2.split("").sort == letters
    end
    return answers
  end
end

puts Anagram.check("listen", %w(enlists google inlets banana nestil))