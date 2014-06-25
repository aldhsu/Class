class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @gender = gender
    @name = name
    @age = age
  end

  def to_s
    "#{name} is a #{gender} of #{age} age"
  end
end