class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.service_request.subject
  #
  #Service request email is sent to gonza electric when a service request is submitted
  def service_request(message)
    attachments.inline['logo.png'] = File.read(Rails.root.join("app/assets/images/logo.png"))
    @message = message
    mail to: "gonzaelectric83@gmail.com", subject: "Service Request"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.confirmation_email.subject
  #
  #Confirmation email is sent to customer when they submit a service request in english
  def confirmation_email(message)
    attachments.inline['logo.png'] = File.read(Rails.root.join("app/assets/images/logo.png"))
    @message = message
    mail to: message.email, subject: "Service Request Confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.confirmation_email_spanish.subject
  #
  #Spanish version of the confirmation email is sent to customer when they submit a service request in spanish
  def confirmation_email_spanish(message)
    attachments.inline['logo.png'] = File.read(Rails.root.join("app/assets/images/logo.png"))
    @message = message
    mail to: message.email, subject: "Confirmación de solicitud de servicio"
  end
end
