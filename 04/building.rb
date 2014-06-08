class Building
  attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :array

  def initialize(address = nil, style = nil, has_doorman = nil, has_elevator = nil, num_floors = nil, array = [])
    @address = address
    @style = style
    @has_doorman = has_doorman
    @has_elevator = has_elevator
    @num_floors = num_floors
    @array = array
  end

  def to_s
    "#{ @address } has #{ @array.length } apartments"
  end

end

