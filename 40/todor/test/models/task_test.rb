# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  duedate     :date
#  completed   :boolean          default(FALSE)
#  user_id     :integer
#  priority_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  address     :text
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
