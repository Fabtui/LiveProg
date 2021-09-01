class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @participations = Participation.where(user: current_user.id)
    @user = current_user
  end

  def index
    search = params[:search]
    if search.present?
      if search[:date].blank? && search[:style_type].blank?
        @events = Event.future.sorted_by_date
      elsif search[:date].blank? && search[:style_type].present?
        @events = Event.future.sorted_by_date.global_search(search[:style_type])
      elsif search[:date].present? && search[:style_type].blank?
        if date_search_length(params).length > 1
          enddate = create_end_date(params)
          startdate = create_start_date(params)
          nextevents = Event.future.sorted_by_date.where("start_date > ?", startdate )
          @events = nextevents.where("start_date < ?", enddate )
        else
          @events = Event.future.sorted_by_date.global_search(search[:date])
        end
      elsif search[:date].present? && search[:style_type].present?
        if date_search_length(params).length > 1
          enddate = create_end_date(params)
          startdate = create_start_date(params)
          nextevents = Event.future.sorted_by_date.where("start_date > ?", startdate )
          eventsbydate = nextevents.where("start_date < ?", enddate )
          bandstyle = Event.future.sorted_by_date.global_search(search[:style_type])
          @events = (eventsbydate & bandstyle)
        else
          eventsbydate = Event.future.sorted_by_date.global_search(search[:date])
          bandstyle = Event.future.sorted_by_date.global_search(search[:style_type])
          @events = (eventsbydate & bandstyle)
        end
      end
    else
      @events = Event.future.sorted_by_date
    end
        @bars = Bar.where(id: @events.pluck(:bar_id).uniq)
        @markers = @bars&.geocoded&.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bar: bar })
      }
    end
  end


  def new
    @band = Band.find(params[:band_id])
    @event = Event.new
  end

  # rubocop:disable Metrics/MethodLength
  def create
    @event = Event.new(event_params)
    @band = Band.find(params[:band_id])
    @event.band = @band
    bar = Bar.find_by_name(params[:event][:bar_id])
    @event.bar = bar
    @event.name = "#{@band.name} x #{bar.name}"
    if @event.save
      @band.fans.each do |user|
        NewEventMailer.event_email(user, @event).deliver_later
      end
      redirect_to event_path(@event)
    else
      render :new
    end
  end
  # rubocop:enable Metrics/MethodLength

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
