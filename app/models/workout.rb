class Workout < ActiveRecord::Base
  include Workflow
  has_and_belongs_to_many :users

  validates_presence_of :start_date, :end_date

  scope :booked, where(workflow_state: "booked")

  workflow do
    state :pending do
      event :book, :transitions_to => :booked
    end

    state :booked do
      event :complete, :transitions_to => :completed
    end

    state :completed
  end

  def exists?(start_date, end_date)
    Workout.booked.where("start_date < ? AND end_date > ?", end_date, start_date).any?
  end 

  def book(user)
    self.users << user
    save!
    mail_workout_users
  end

  private

  def mail_workout_users
    self.users.each do |user|
      Notification.workout_booked(user, self.start_date)
    end
  end
end