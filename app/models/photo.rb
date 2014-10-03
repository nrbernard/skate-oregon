class Photo < ActiveRecord::Base
  belongs_to :listing

  validates_presence_of :photo

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('default.gif')
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
