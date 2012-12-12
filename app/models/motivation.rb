# == Schema Information
#
# Table name: motivations
#
#  id         :integer          not null, primary key
#  rating     :integer          default(1)
#  type       :string(255)
#  quote      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Motivation < ActiveRecord::Base

end
