class Binary
  def self.convert(binary_number)
    sum = 0
    binary_number.split("").reverse.each_with_index do |number, index|
      sum += (2 ** index)  * number.to_i
    end
    sum
  end
end

puts Binary.convert("110110110110101")