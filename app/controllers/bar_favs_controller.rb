class BarFavsController < ApplicationController
  def create
    @bar_fav = BarFav.new
    @bar_fav.user_id = current_user.id
    @bar_fav.bar_id = params[:bar_id]
    @bar_fav.save
  end

  def destroy
    @bar_fav = BarFav.find(params[:id])
    @bar_fav.destroy
  end
end