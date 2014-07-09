require 'pry'

class Magnitudes
  def self.magnitude(number)
    number_as_string = number.to_s
    string = ""
    while number_as_string.length > 0
      binding.pry
      string << stringify_number(number_as_string)
    end
    return string
  end

  def self.stringify_number(number_string)
    case number_string.length
      when 10..12 then return number_string.slice!(0..-10) + " billion "
      when 7..9 then return number_string.slice!(0..-7) + " million "
      when 4..6 then return number_string.slice!(0..-4) + " thousand "
      when 0..3 then return number_string.slice!(0..-1)
    end
  end

end

puts Magnitudes.magnitude(1234567890)