# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  email                 :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class User < ActiveRecord::Base
  validates :name, :email, :password, :password_confirmation,  presence: true
  validates :email, uniqueness: true
end
