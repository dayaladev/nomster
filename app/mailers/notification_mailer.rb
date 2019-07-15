class NotificationMailer < ApplicationMailer
  default from: "noreply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email, subject: "A Comment Has Been Added to #{@place.name}!")
  end
end
