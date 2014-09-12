class EditColumnNameInReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :listings_id, :listing_id
  end
end
