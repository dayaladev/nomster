class NotificationMailer < ApplicationMailer
  default from: "noreply@nomsterapp.com"

  def comment_added
    mail(to: "my@email.com", subject: "A Comment Has Been Added to Your Place!")
  end
end
