require 'pry'
class Bob
  def answer(question)
  dict = {
    :a => "4",
    :e => "3",
    :i => "1",
    :o => "0"
  }
  string = ""
  string = "Sure" if question[-1] == "?"
  string = "Woah, chill out!" if question.upcase == question
  string = "Fine. Be that way" if question.empty?
  "Whatever" if string.empty?
  if question.downcase.include?("bro,")
    question.delete!("bro")
    question.split do |word|
      if !vowels.include?(word[0])
        word[0].down!
      end
      word.each_char do |char|
        if dict.include?(char.to_sym)
          string << dict[char.to_sym]
        elsif

        else
          string << char
        end
      end
    end
  end
  string
  end
end

progbob = Bob.new
loop do
  puts "Ask bob a question"
  puts progbob.answer(gets.chomp)
end