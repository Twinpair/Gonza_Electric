class Message < ApplicationRecord
  before_validation :normalize_name
  validates :name, presence: true
  VALID_PHONE_REGEX = /\A[(-. 0-9]+[0-9]*\z/
  validates :phone, presence: true, length: {minimum: 7, maximum: 20, message: "number must be between 7-20 characters [eg: (xxx)xxx-xxxx ]"}, format: { with:  VALID_PHONE_REGEX, message: "number can only contain numbers [0-9] and special characters [ .  +  () ]"}
  VALID_EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]/i
  validates :email, length: {maximum: 200}, format: { with:  VALID_EMAIL_REGEX , message: "is in wrong format. Correct format: aaaaa@zzz.com"}, if: :email_present
  validates :message, presence: true
  VALID_CAPTCHA_REGEX = /\Aw68hp\z/i
  validates :captcha, presence: true, format: {with: VALID_CAPTCHA_REGEX, message: "text did not match image text"}

private
  
  #Normalize name
  def normalize_name
    self.name = name.downcase.titleize
  end

  #Emails are not required on the form. Email is only validated if an email is present
  def email_present
    !self.email.empty?
  end
end