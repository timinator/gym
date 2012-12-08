# == Schema Information
#
# Table name: companies
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address         :string(255)
#  zip_code        :string(255)
#  primary_name    :string(255)
#  primary_contact :string(255)
#  memo            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Company < ActiveRecord::Base
end
