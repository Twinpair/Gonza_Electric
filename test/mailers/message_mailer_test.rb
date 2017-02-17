require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "service_request" do
    mail = MessageMailer.service_request
    assert_equal "Service request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmation_email" do
    mail = MessageMailer.confirmation_email
    assert_equal "Confirmation email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmation_email_spanish" do
    mail = MessageMailer.confirmation_email_spanish
    assert_equal "Confirmation email spanish", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
