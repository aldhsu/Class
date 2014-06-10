class Year
  attr_accessor :year
  def initialize(year)
    @year = year
  end

  def leap?
    return false if year % 4 != 0
    return false if year % 100 != 0
    return false if year % 400 != 0
    true
  end
end

test1 = Year.new(1997)
test2  = Year.new(1996)
test3 = Year.new(1900)
test4 = Year.new(2000)

test_array = [test1, test2, test3, test4]

test_array.each do |test|
  puts test.year
  puts test.leap?
end