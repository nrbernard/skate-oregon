class ListingsController < ApplicationController


private
  def listing_params
    params.require(:listing).permit(:name, :street, :city, :state, :zip)
  end
end
