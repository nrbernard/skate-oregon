class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing), notice: "Park added!"
    else
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @reviews = @listing.reviews.order("created_at DESC")
  end

private
  def listing_params
    params.require(:listing).permit(:name, :street, :city, :state, :zip)
  end
end
