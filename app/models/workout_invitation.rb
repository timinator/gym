class WorkoutInvitation
  attr_accessor :start_date, :end_date, :creator_user, :invited_user

  def intialize(args)
    @start_date = args.[:start_date]
    @end_date = args[:end_date]
    @creator_user = args[:creator_user]
    @invited_user = args[:invited_user]
  end

  def send_invitation!
    raise "Workout already exists for this period" if Workout.exists?(start_date, end_date)
    create_workout
    send_email_invitation
  end

  private

  def create_workout
    workout = Workout.new
    workout.start_date = start_date
    workout.end_date = end_date
    workout.users << creator_user9
    workout.save!
  end

  def send_email_invitation
    Notification.workout_invitation(creator_user: creator_user, 
                                    invited_user: invited_user, 
                                    start_date: start_date,
                                    end_date: end_date)
  end
end