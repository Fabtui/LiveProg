class EventsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @band = Band.find(params[:band_id])
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @band = Band.find(params[:band_id])
    @event.band = @band
    bar = Bar.find_by_name(params[:event][:bar_id])
    @event.bar = bar
    @event.name = "#{@band.name} x #{bar.name}"
    if @event.save
    redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :name, :description, :bar_id)
  end
end
