require 'pry'

class Say

  def initialize(number)
    @number = number
  end

  def in_english
  one_digit = {
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine"
  }

  ten_digit = {
    "2" => "twenty",
    "3" => "thirty",
    "4" => "fourty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety"
  }
    array = @number.to_s.split("")
    string = ""
    if array.length > 1
      if array[0] == "1"
        case array[1]
        when "0" then return string = "ten"
        when "1" then return string = "eleven"
        when "2" then return string = "twelve"
        when "3" then return string = "thirteen"
        when "5" then return string = "fifteen"
        end
      end

      if ten_digit.include?(array[0])
        string += ten_digit[array.shift] + "-"
      else
        array.shift
        string += "teen"
      end
      if string == "teen"
          string.insert(0, one_digit[array[0]])
      else
      string += one_digit[array[0]]
      end
    else
      string += one_digit[array[0]] unless array[0] == "0"
      string += "zero" if array[0] == "0"
    end
    string
  end

end

loop do
  puts "What number do you want to say?"
  command = Say.new(gets.chomp.to_i).in_english
  puts command
  puts `say #{command}`
end
