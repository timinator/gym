# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
	belongs_to :user
	

	mount_uploader :photo, PhotoUploader
	default_scope order(:id)
end
