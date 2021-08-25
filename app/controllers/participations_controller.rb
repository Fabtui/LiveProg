class ParticipationsController < ApplicationController
  def new
    @partiipation = Participation.new
    @participation = Participation.new
    @event = Event.find(params[:event_id])
    @participation.user_id = current_user.id
    @participation.event_id = @event.id
    if @participation.save
      redirect_to events_path
    else
      render :new
    end
  end

  def create
  end

  def destroy
  end
end
