class Queens
  attr_accessor :white, :black
  def initialize(properties = {})
    @white = properties[:white] ? properties[:white] : [0,3]
    @black = properties[:black] ? properties[:black] : [7,3]

    if @white == @black
      raise ArgumentError
    end
  end

  def to_s
    string = ''
    (0..7).to_a.each do |x|
      (0..7).to_a.each do |y|
        position_filled = false
        if [x,y] == @white || [x,y] == @black
          string += 'W ' if @white == [x,y]
          string += 'B ' if @black == [x,y]
          position_filled = true
        end
        string += 'O ' unless position_filled
        string += '\n'if y == 7
      end
    end
    string
  end

  def attack?
    # sideways
    return true if @black[0] == @white[0]
    #updown
    return true if @black[1] == @white[1]
    #diagonal
    # build diagonals
    diagonals = []
    starting_pos = @black.dup
    # rright down
    while starting_pos[0] < 7
      break if starting_pos[1] == 7
      diagonals << [starting_pos[0] += 1, starting_pos[1] += 1]
    end
    #left up
    while starting_pos[0] > 0
      break if starting_pos[1] == 0
      diagonals << [starting_pos[0] -= 1, starting_pos[1] -= 1]
    end
    #right up
    while starting_pos[0] < 7
      break if starting_pos[1] == 0
      diagonals << [starting_pos[0] += 1, starting_pos[1] -= 1]
    end
    #left down
    while starting_pos[0] > 0
      break if starting_pos[1] == 7
      diagonals << [starting_pos[0] -= 1, starting_pos[1] += 1]
    end

    return true if diagonals.include? @white
  end
end

# eight Queens
queens = []
(0..7).to_a.each do |x|
  (0..7).to_a.each do |y|

  end
end
