class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @participations = Participation.where(user: current_user.id)
    @user = current_user
  end

  def index
  search = params[:search]

  if search.present?
    if search[:start_date].blank?
      @events = Event.future.sorted_by_date
    elsif search[:start_date].present?
      @events = Event.global_search(search[:start_date])
    end
    else
      @events = Event.future.sorted_by_date
    end
    #     @markers = @events&.geocoded&.map do |event|
    #   {
    #     lat: event.latitude,
    #     lng: event.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { event: event })
    #   }
    # end
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
    params.require(:event).permit(:start_date, :name, :description, :bar_id, :hour)
  end
end
