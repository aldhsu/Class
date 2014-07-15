class Series
  def self.find_largest_consecutive(series, length)
    total_series = series.length - length
    current_max = 0
    (0..total_series).each do |position|
      numbers = series[position, length]
      mult = numbers.chars.inject(1){|memo, num| memo * num.to_i}
      current_max = mult if mult > current_max
    end
    current_max
  end
end

puts Series.find_largest_consecutive("0123456789", 3)