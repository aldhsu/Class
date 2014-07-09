class Magnitudes
  def self.magnitude(number)
    number_as_string = number.to_s
    string = ""
    while number_as_string.length > 0
      string << stringify_number(number_as_string)
    end
  end

  def self.stringify_number(number_string)
    case number_string.length
      when 9..12 then return number_string.slice!(-number_string.length, 9) + " billion"
      when 6..11 then return number_string.slice!(-number_string.length, 6) + " million"
      when 3..5 then return number_string.slice(-number_string.length, 5) + " thousand"
    end
  end

end

Magnitudes.magnitude(1234567890)