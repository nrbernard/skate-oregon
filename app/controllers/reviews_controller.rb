class ReviewsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @review = Review.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.new(review_params)
    if @review.save
      respond_to do |format|
        format.html { redirect_to listing_path(@listing) }
        format.js
      end
    else
      render 'new'
    end
  end

private
  def review_params
    params.require(:review).permit(:content).merge(user_id: current_user.id)
  end
end
