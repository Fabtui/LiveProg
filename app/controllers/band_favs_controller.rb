class BandFavsController < ApplicationController
  def create
    @band_fav = BandFav.new
    @band_fav.user_id = current_user.id
    @band_fav.band_id = params[:band_id]
    @band_fav.save
  end

  def destroy
    @band_fav = BandFav.find(params[:id])
    @band = Band.find(@band_fav.band_id)
    @band_fav.destroy
  end
end
