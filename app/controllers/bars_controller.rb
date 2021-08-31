class BarsController < ApplicationController
  def index
    @bars = Bar.all
    search = params[:search]
    @bars = Bar.global_search(search) if search.present?
    @markers = @bars&.geocoded&.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bar: bar })
      }
    end
  end

  def show
    @bar = Bar.find(params[:id])
    @events = @bar.events.future.sorted_by_date
  end
end
