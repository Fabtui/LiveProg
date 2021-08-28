class ParticipationsController < ApplicationController

  def create
    @participation = Participation.new
    @event = Event.find(params[:event_id])
    @participation.user_id = current_user.id
    @participation.event_id = @event.id
    @participation.save
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
  end
end
