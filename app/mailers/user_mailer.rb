class UserMailer < ActionMailer::Base
  default from: "dusty@littlecatlabs.co"

  def registration_email(registration)
    @registration = registration
    mail to: @registration.email, subject: "Little Cat Labs - Registration"
  end
end
