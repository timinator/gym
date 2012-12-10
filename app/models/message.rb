# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  s_id       :integer
#  r_id       :integer
#  message    :text
#  read_flag  :boolean
#  sms        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
	belongs_to :sender, foreign_key: 's_id', class_name: 'User'
	belongs_to :receiver, foreign_key: 'r_id', class_name: 'User'
end
