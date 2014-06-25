require_relative 'person.rb'
f = File.new('database.txt','a+')
people = []
def input(message)
  print message
  gets.chomp
end
print "Add a person"
while true
  name = input("Name: ")
  age = input("Age: ")
  gender = input("Gender: ")
  f.puts "#{name}, #{age}, #{gender}"
  another = input("Another?").downcase
  break if another != 'y'
end

f.close
f = File.new('database.txt', 'r')
people=[]
f.each do |line|
  things = line.split(', ')
  people << Person.new(things[0], things[1], things[2])
end
f.close
people.each do |person|
  puts person
end
