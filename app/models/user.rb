class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_one :location, through: :profile

  accepts_nested_attributes_for :profile

  def distance_between(user)
    self.location.distance_from(user.location)
  end 
end
