class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
    @events = @bar.events.future.sorted_by_date
  end
end
