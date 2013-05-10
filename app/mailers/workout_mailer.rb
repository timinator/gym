class WorkoutMailer < ActionMailer::Base

  def invitation(args)
    @creator_user = args[:creator_user]
    @invited_user = args[:invited_user]
    @start_date = args[:start_date]
    @end_date = args[:end_date]
    @confirm_workout_url = ""

    mail to: @invited_user.email, subject: "#{@creator_user.name} would like to do a workout with you"
  end

  def workout_booked(user, start_date)
    @user = user
    @start_date = start_date

    mail to: @user.email, subject: "Your workout has been booked"
  end
end