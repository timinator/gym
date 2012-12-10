# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  description     :string(255)
#  gender          :string(255)
#  height          :string(255)
#  weight          :string(255)
#  workout_goal    :string(255)
#  body_fat        :string(255)
#  age             :integer
#  company         :string(255)
#  company_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :checkins
  has_many :photos
  has_secure_password

  def self.text_search(query)
    self.where("email @@ :q or name @@ :q or description @@ :q", :q => query)
  end
  def self.filter(query)
    self.where("workout_goal @@ :q", :q => query)
  end
  accepts_nested_attributes_for :photos
end
