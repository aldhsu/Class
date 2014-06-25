require 'pry'
class WordyArithmetic
  def self.answer(string)
    @matches = string.match(/(\d+)[a-z" "]*(\d+)/)
    @first_number = @matches[1].to_i
    @second_number = @matches[2].to_i
    @operator = string.match(/plus|minus|multiplied|divided/).to_s
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

puts WordyArithmetic.answer("What is 54 multiplied by 100?")