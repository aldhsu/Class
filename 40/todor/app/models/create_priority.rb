# == Schema Information
#
# Table name: create_priorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)      default("white")
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class CreatePriority < ActiveRecord::Base
end
