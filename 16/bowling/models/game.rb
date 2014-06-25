class Game < ActiveRecord::Base
  has_many :frames

  def bowl(pins)

    self.save unless self.id
    current = current_frame
    if frames.length >= 10 && current.completed?
      raise "Game Over"
    end

    if pins > 10
      raise "Too many pins"
    end

    if current.first_bowl
      current.second_bowl = pins
    else
      current.first_bowl = pins
    end
    current.save
  end

  def current_frame
    if frames.length == 0 || frames.last.completed?
      frames << Frame.new
    end
    frames.last
  end

  def score
    sum =0
    frames.each do |frame|
      sum += frame.score
    end
    sum
  end

end