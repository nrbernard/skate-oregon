class Photo < ActiveRecord::Base
  belongs_to :listing

  validates_presence_of :photo

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
