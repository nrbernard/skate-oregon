class AddPhotosColumnToListings < ActiveRecord::Migration
  def change
    add_attachment :listings, :photo
  end
end
