# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/service_request
  def service_request
    message = Message.last
    MessageMailer.service_request(message)
  end

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/confirmation_email
  def confirmation_email
    message = Message.last
    MessageMailer.confirmation_email(message)
  end

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/confirmation_email_spanish
  def confirmation_email_spanish
    message = Message.last
    MessageMailer.confirmation_email_spanish(message)
  end

end
