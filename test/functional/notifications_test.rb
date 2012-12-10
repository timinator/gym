require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "welcome" do
    mail = Notifications.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "logoff" do
    mail = Notifications.logoff
    assert_equal "Logoff", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
