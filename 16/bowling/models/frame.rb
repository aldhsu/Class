class Frame < ActiveRecord::Base
  belongs_to :game

  def completed?
    score == 10 || first_bowl && second_bowl
  end

  def score
    first_bowl.to_i + second_bowl.to_i
  end

  def spare?
    10 == score && second_bowl
  end

  def strike?
    10 == first_bowl
  end

  def pins_remaining
    10 - first_bowl.to_i - second_bowl.to_i
  end
end