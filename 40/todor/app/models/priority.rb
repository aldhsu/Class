# == Schema Information
#
# Table name: priorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)      default("white")
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  urgency    :integer          default(1)
#

class Priority < ActiveRecord::Base
  has_many :tasks
  belongs_to :users
end
