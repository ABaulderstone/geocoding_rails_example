class Listing < ApplicationRecord
  belongs_to :user
  
  def location 
    self.user.location
  end 

   def self.within_distance(distance, user_id)
      origin = User.find(user_id).location
      nearby_user_ids = Location.within(distance, origin: origin).reject {|l| l.id == user_id}.map {|l| l.profile.id}
      self.where(user_id: nearby_user_ids)
   end
end
