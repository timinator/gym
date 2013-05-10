class Workout < ActiveRecord::Base
  include Workflow
  has_and_belongs_to_many :users

  validates_presence_of :start_date, :end_date

  attr_accessible :workflow_state, :start_date, :end_date

  scope :booked, where(workflow_state: "booked").where("deleted_at IS NULL")
  scope :current, where(workflow_state: ["pending", "booked"]).where("deleted_at IS NULL")

  workflow do
    state :pending do
      event :book, :transitions_to => :booked
    end

    state :booked do
      event :complete, :transitions_to => :completed
    end

    state :completed
  end

  def self.exists?(starting_date, ending_date)
    Workout.booked.where("start_date < ? AND end_date > ?", ending_date, starting_date).any?
  end 
end