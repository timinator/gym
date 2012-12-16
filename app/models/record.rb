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

  def self.frequency
    id = []
    freq = Hash.new(0)
    Record.select(:user_id).each {|i| id << i.user_id }
    id.each {|x| freq[x] += 1 }
    freq = freq.sort_by {|x,y| y }
    freq.reverse!
  end

end
