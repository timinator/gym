class WorkoutInvitation
  attr_accessor :params

  def initialize(args)
    raise "All fields are required" if args.values.any?{|val| val.blank? == true }
    @params = args
  end

  def send_invitation!
    raise "Workout already exists for this period" if Workout.exists?(params[:start_date], params[:end_date])
    workout = create_workout
    send_email_invitation
    workout
  end

  private

  def create_workout
    CreateWorkout.new(params).build!
  end

  def send_email_invitation
    WorkoutMailer.invitation(params).deliver
  end
end