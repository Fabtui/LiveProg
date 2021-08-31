class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @participations = Participation.where(user: current_user.id)
    @user = current_user
  end

  def index
    search = params[:search]
    if search.present?
      if search[:date].blank?
        @events = Event.future.sorted_by_date
      elsif search[:date].present?
        if date_search_length(params).length > 1
          enddate = create_end_date(params)
          startdate = create_start_date(params)
          nextevents = Event.future.sorted_by_date.where("start_date > ?", startdate )
          @events = nextevents.where("start_date < ?", enddate )
        else
          @events = Event.global_search(search[:date])
        end
      end
    else
      @events = Event.future.sorted_by_date
    end

    # Event.where("start_date > ?",  )

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

  def date_search_length(params)
    daterange = params[:search][:date].split(" to ")
  end

  def create_end_date(params)
    daterange = params[:search][:date].split(" to ")
    return daterange[1]
  end


  def create_start_date(params)
    daterange = params[:search][:date].split(" to ")
    return daterange[0]
  end

  def event_params
    params.require(:event).permit(:start_date, :name, :description, :bar_id, :hour)
  end
end
