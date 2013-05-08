class Notifications < ActionMailer::Base
  default from: "aaronfuchs100@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"


    mail to: "aaronfuchs100@gmail.com", :subject => "Welcome to Gym Buddy"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.logoff.subject
  #
  def logoff
    @greeting = "Hi"

    mail to: "aaronfuchs100@gmail.com"
  end

  def workout_invitation(args)
    @creator_user = args[:creator_user]
    @invited_user = args[:invited_user]
    @start_date = args[:start_date]
    @end_date = args[:end_date]
    @confirm_workout_url = ""

    mail to: invited_user.email, :subject: "#{creator_user.name} would like to do a workout with you"
  end

  def workout_booked(user, start_date)
    @user = user
    @start_date = start_date

    mail to: user.email, subject: "Your workout has been booked"
  end
end
