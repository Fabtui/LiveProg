class BandsController < ApplicationController
  def show
  end

  def index
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
