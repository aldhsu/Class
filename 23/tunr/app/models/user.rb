# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string(255)
#  email           :string(255)
#  avatar          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  isadmin         :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_many :mixtapes
  has_secure_password
  validates :user_name, presence: true, length: {minimum: 2}
end
