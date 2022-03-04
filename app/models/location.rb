class Location < ApplicationRecord
  belongs_to :profile
  acts_as_mappable
end
