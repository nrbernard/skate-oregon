class PhotosController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @photo = Photo.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @photo = @listing.photos.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.html { redirect_to listing_path(@listing) }
        format.js
      end
    else
      render 'error'
    end
  end

private
  def photo_params
    params.require(:photo).permit(:photo, :description)
  end
end
