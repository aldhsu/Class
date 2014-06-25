require 'pry'

class School
  attr_accessor :db

  def initialize(school_name)
    @db = Hash.new{|x,y| x[y]=[]}
    @school_name = school_name
  end

  def add(student_name, grade)
    @db[grade]<<student_name
  end

  def grade(grade)
    @db[grade]
  end

  def sort
    @db.each_value {|array| array.sort!}
    @db = Hash[@db.sort]
  end

end

ga = School.new("General Assembly")
ga.add("James", 2)
ga.add("jeff", 2)
ga.add("Allen",2)
ga.add("Modigali", 1)
p ga.grade(2)
p ga.sort