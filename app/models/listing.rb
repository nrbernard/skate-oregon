class Listing < ActiveRecord::Base
  has_many :reviews

  validates_presence_of :name
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
end
