class WordyArithmetic
  def self.answer(string)
    @string_as_array = string.split
    @first_number = (@string_as_array[2]).to_i
    @string_as_array.length == 5 ? (@second_number = (@string_as_array[4].delete('?')).to_i) : @second_number = (@string_as_array[5].delete('?')).to_i
    @operator = @string_as_array[3]
    self.calculate
  end

  def self.calculate
    case @operator
    when 'plus' then return @first_number + @second_number
    when 'minus' then return @first_number - @second_number
    when 'multiplied' then return @first_number * @second_number
    when 'divided' then return @first_number / @second_number
    else return "I didn't understand what you asked"
    end
  end
end

loop do
  question = gets.chomp
  break if question == "quit"
  puts WordyArithmetic.answer(question)
end

