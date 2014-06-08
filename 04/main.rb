=begin
1. Add a building
2. Add an apartment - available, all
3. Add a tenant
4. Remove
=end
require 'pry'

require_relative 'apartment'
require_relative 'building'
require_relative 'tenant'
require_relative 'menu_page'

b1 = Building.new("18 Rodger St, Darlinghurst 2000 Sydney", :modern, false, false, 4)
a1 = Apartment.new(700, 3, 2)
t1 = Tenant.new("Jeff Morrison", 45, :male)
managed_buildings = { 1 => b1}
b1.apartments[1] = a1
a1.occupants[1] = t1

#helpers
#inputs
def input(message)
  print message
  output = nil
  loop do
    begin
      output = Integer(gets.chomp)
    rescue
      puts "Put integer"
    end
    break if output.class == Fixnum
  end
  output
end

def display_options(array)
  array.each_with_index do |item, index|
    puts "#{index}. #{item.to_s}"
  end
  l = array.length
end
#
def options_select(array)
  display_options(array)
  choice = nil
  while !array.include?(choice)
    choice = array[input("Choice?")]
    if !array.include?(choice)
      puts "Choose a number from the list"
    end
  end
  puts "0. Add or Remove"
  puts "1. Continue"
  second_choice = input("O.Add or Remove, 1. Continue")
  if second_choice == 0
    add_remove(choice)
  else
    return choice
  end
end

def menu_page(title, array)
  puts `clear`
  puts "Manage Buildings"
  puts title
  puts " ================================= "
  option = options_select(array)
end

def add_remove(choice)

end

def menu(buildings)
  building = menu_page("Choose Building", buildings.values)
  apartment = menu_page("Choose Apartment", building.apartments.values)
  occupants = menu_page("Choose Tenants", apartment.occupants.values)
end
binding.pry
menu(managed_buildings)
