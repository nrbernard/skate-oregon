class Listing < ActiveRecord::Base
  has_many :reviews
  has_many :photos

  validates_presence_of :name
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip

  has_attached_file :photo, :default_url => "/images/:style/default.png"
end
