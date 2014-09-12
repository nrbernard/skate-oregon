class RemovePhotoColumnsFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :photo_file_name
    remove_column :listings, :photo_content_type
    remove_column :listings, :photo_file_size
    remove_column :listings, :photo_updated_at
  end
end
