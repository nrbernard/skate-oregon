class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :listings
      t.text :content

      t.timestamps
    end
  end
end
