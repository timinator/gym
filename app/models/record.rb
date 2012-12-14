# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  weight     :float
#  run        :float
#  pushups    :float
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Record < ActiveRecord::Base
  has_many :users
end
