class Notifications < ActionMailer::Base
  default from: "hardbodies@outlook.com"

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
end
