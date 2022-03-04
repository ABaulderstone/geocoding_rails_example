class Profile < ApplicationRecord
  belongs_to :user
  has_one :location

  after_create :create_geocoded_location

  private 

  def full_address
    [self.street, self.suburb, self.postcode].join(", ")
  end

  def create_geocoded_location
    loc = Geokit::Geocoders::OpencageGeocoder.geocode self.full_address
    self.create_location(lat:loc.lat, lng:loc.lng)
  end
end
