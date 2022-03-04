class Profile < ApplicationRecord
  belongs_to :user
  has_one :location

  before_create 
  after_create :create_geocoded_location

  # validates :street, prescence: true
  # validates :suburb, prescence: true
  # validates :postcode, prescence: true 
  

  private 

  def full_address
    [self.street, self.suburb, self.postcode].join(", ")
  end

  def create_geocoded_location
    loc = Geokit::Geocoders::OpencageGeocoder.geocode self.full_address
    self.create_location(lat:loc.lat, lng:loc.lng)
  end

  def validate_address

  end

end
