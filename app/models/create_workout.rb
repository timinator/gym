class CreateWorkout
  attr_accessor :start_date, :end_date, :creator_user, :invited_user

  def initialize(args)
    @start_date = args[:start_date]
    @end_date = args[:end_date]
    @creator_user = args[:creator_user]
    @invited_user = args[:invited_user]
  end

  def build!
    workout = Workout.new
    workout.start_date = start_date
    workout.end_date = end_date

    [creator_user, invited_user].each do |user|
      workout.users << user
    end

    workout.save!
    workout
  end
end