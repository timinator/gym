# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  phone           :string(255)
#  gender          :string(255)
#  workout_goal    :string(255)
#  birthdate       :date
#  company         :string(255)
#  company_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :checkins
  has_many :photos
  has_many :records
  has_and_belongs_to_many :workouts
  has_secure_password

  mount_uploader :avatar, PhotoUploader

  has_many :sendd, foreign_key: 's_id', class_name: 'Message'
  has_many :receive, foreign_key: 'r_id', class_name: 'Message'

  def self.text_search(query)
    self.where("email @@ :q or name @@ :q", :q => query)
  end
  def self.filter(query)
    self.where("workout_goal @@ :q", :q => query)
  end
  accepts_nested_attributes_for :photos
end
