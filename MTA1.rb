require 'pry'

Lines = {
  :N => [:N_Times_Square,:N_34th,:N_28th,:N_23rd,:Union_Square,:N_8th],
  :L => [:L_8th,:L_6th,:Union_Square,:L_3rd,:L_1st],
  :L6 => [:L6_Grand_Central,:L6_33rd,:L6_28th,:L6_23rd,:Union_Square,:L6_Astor_Place]
}

def input(message)
  print message
  gets.chomp.to_i
end

def options_select (array)
  array.each_with_index do |item, index|
    puts "#{index}. #{item.to_s}"
  end
  choice = array[input("Choice?")]
end

def stops_to_common(hash, line_and_station, common)
  stops =[]
  start_index = hash[line_and_station[:line]].index(line_and_station[:station])
  common_index = hash[line_and_station[:line]].index(common)
  number_of_stops = (start_index-common_index)
  begin
    (start_index).step(common_index, common_index <=> start_index) do |x|
      stops << hash[line_and_station[:line]][x]
    end
  rescue
    stops = [common]
  end
  stops
end

def menu(hash)
  loop do
    journey = {
      'starting' => {
        :line => nil,
        :station => nil
        },
      'ending' => {
        :line => nil,
        :station => nil
      }
    }

    journey.keys.each do |point|
      puts `clear`
      puts "what line are you #{point}?"
      journey[point][:line] = options_select(hash.keys)

      puts `clear`
      puts "Station Listing at #{journey[point][:line]} Line"
      journey[point][:station] = options_select(hash[journey[point][:line]])
    end

    common = nil
    journey.each_value do |line_and_station|
      common ||=
      common = common &
    end
    start_stops = stops_to_common(hash, journey['starting'], common)
    end_stops = stops_to_common(hash, journey['ending'], common).reverse
    puts by_stops = (start_stops + end_stops).
    puts "Total stops #{by_stops.length}"
  break if response = 'q'
  end
end

menu(Lines)
