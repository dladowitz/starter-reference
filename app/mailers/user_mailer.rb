class UserMailer < ApplicationMailer
  def registration_email(registration)
    @registration = registration

    mail(to: @registration.email, subject: "Little Cat Labs - Registration")
  end
end
