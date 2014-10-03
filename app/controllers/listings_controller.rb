class ListingsController < ApplicationController
  load_and_authorize_resource param_method: :listing_params

  def index
    @listings = Listing.all
  end

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

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to listing_path(@listing), notice: "Park updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path, notice: "Park deleted!"
  end

private
  def listing_params
    params.require(:listing).permit(:name, :description, :street, :city, :state, :zip)
  end
end
