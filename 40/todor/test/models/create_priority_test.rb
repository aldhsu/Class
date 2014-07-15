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

require 'test_helper'

class CreatePriorityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
