# == Schema Information
#
# Table name: oceans
#
#  id        :integer          not null, primary key
#  name      :string(255)
#  longitude :integer
#  latitude  :integer
#  volume    :integer
#  image     :string(255)
#

class Ocean < ActiveRecord::Base
end
