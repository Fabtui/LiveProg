class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
    @event = Event.find(params[:event_id])
    @participation.user_id = current_user.id
    @participation.event_id = @event.id
    if @participation.save
      redirect_to event_path(params[:event_id])
    else
      redirect_to bands_path
    end
  end

  def create
  end

  def destroy
  end
end
