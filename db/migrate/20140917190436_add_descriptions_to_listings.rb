class AddDescriptionsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :description, :string
  end
end
