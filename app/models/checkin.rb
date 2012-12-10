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
    if (time-Time.now < 3600) && (time-Time.now > 0)
      "#{user.name} will be working out in #{((time-Time.now)/60).to_i} minutes for #{workout_type}"
    elsif time > Time.now
      "#{user.name} will be working out at #{(time-18000).strftime("%I:%M %P")} for #{workout_type}"
    else
      "#{user.name} worked out at #{(time-18000).strftime("%I:%M %P")} for #{workout_type}"
    end
  end
end
