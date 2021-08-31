class BandsController < ApplicationController
  def index
  search = params[:search]

 if search.present?
      if search[:band_style].blank? && search[:band].present?
        @bands = Band.global_search(search[:band])
      elsif search[:band_style].present? && search[:band].blank?
        @bands = Band.global_search(search[:band_style])
      elsif search[:band_style].present? && search[:band].present?
        band_style = Band.global_search(search[:band_style])
        band = Band.global_search(search[:band])
        @bands = (band_style & band)
      elsif search[:band_style].blank? && search[:band].blank?
        @bands = Band.all
      end
    else
      @bands = Band.all
    end
  end

  def show
    @band_review = BandReview.new
    @band = Band.find(params[:id])
    @band_fav = BandFav.find_by(user: current_user, band: @band)
    @events = @band.events.future.sorted_by_date
    @band_reviews = @band.band_reviews
    @average_rating = @band_reviews.average(:rating)
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.owner = current_user
    if @band.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name, :description, :style, :facebook_url, :youtube_url, photos: [])
  end
end
