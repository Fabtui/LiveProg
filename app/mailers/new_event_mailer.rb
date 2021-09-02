class NewEventMailer < ApplicationMailer
  default from: 'contact@liveprog.one'

  def event_email(user, event)
    @user = user
    @event = event
    mail(to: @user.email, subject: "Un nouveau concert de #{@event.band.name} sur Nice!")
  end
end
