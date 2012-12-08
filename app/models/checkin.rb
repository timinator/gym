# == Schema Information
#
# Table name: checkins
#
#  id           :integer          not null, primary key
#  time         :time
#  workout_type :string(255)
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Checkin < ActiveRecord::Base
  attr_accessible :time, :workout_type, :user_id, :user

  belongs_to :user

  def to_s
    "#{user.email} working out in #{time} for #{workout_type}"
  end
end
