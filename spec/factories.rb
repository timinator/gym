FactoryGirl.define do

  factory :user do
    email { Faker::Internet.email }
    name Faker::Name.first_name
    password_digest {Faker::Base.numerify 'xxxxxxxxxxxxxxx'}
  end

  factory :workout do
    workflow_state "pending"
    start_date "2013-05-09 13:02:17"
    end_date "2013-05-09 15:02:17"
  end

  factory :pending_workout do
    workflow_state "pending"
  end

  factory :booked_workout do
    workflow_state "booked"
  end

  factory :completed_workout do
    workflow_state "completed"
  end
end