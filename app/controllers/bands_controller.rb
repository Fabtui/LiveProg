class BandsController < ApplicationController
  def index
    if default_search?
      @bands = Band.all
    else
      bands_from_name = Band.global_search(search_band)
      bands_from_style = Band.style_search(search_style)
      @bands = [bands_from_name, bands_from_style].reject(&:blank?).reduce(:&)
      @bands ||= []
      @results = search_style
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

  def default_search?
    params[:search].blank? || (search_band.blank? && search_style.blank?)
  end

  def search_style
    if params[:search][:band_style].is_a?(Array)
      params[:search][:band_style].compact_blank
    else
      params[:search][:band_style]
    end
  end

  def search_band
    params[:search][:band]
  end

  def band_params
    params.require(:band).permit(:name, :description, :style, :facebook_url, :youtube_url, photos: [])
  end
end
