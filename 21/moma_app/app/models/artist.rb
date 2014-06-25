# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  nationality :string(255)
#  dob         :date
#  image       :text
#  created_at  :datetime
#  updated_at  :datetime
#  period      :string(255)
#

class Artist < ActiveRecord::Base
  has_many :works
end
