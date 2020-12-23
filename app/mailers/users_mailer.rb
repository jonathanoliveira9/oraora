class UsersMailer < ApplicationMailer

  def custom_message(subject, body, email)
    @body = body
    mail(to: email, subject: subject)
  end
end
