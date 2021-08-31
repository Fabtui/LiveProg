class BandReviewsController < ApplicationController

  def new
    @band = Band.find(params[:band_id])
    @band_review = BandReview.new
  end

  def create
   # @band_review = BandReview.new(band_review_params)
   # @band = Band.find(params[:band_id])
   # @band_review.band_id = @band.id
   # @band_review.user_id = current_user.id
   # if @band_review.save
   #   redirect_to band_path(@band)
   # else
   #   render :new

    @band = Band.find(params[:band_id])
    @band_review = BandReview.new(band_review_params)
    @band_review.user_id = current_user.id
    @band_review.band = @band
    @band_review.save
    redirect_to band_path(@band)
  end

  def destroy
    @band_review = BandReview.find(params[:id])
    @band = Band.find_by_id(@band_review.band_id)
    @band_review.destroy

    redirect_to band_path(@band)
  end

  private

  def band_review_params
    params.require(:band_review).permit(:comment, :rating)
  end
end
