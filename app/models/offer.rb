class Offer < ApplicationRecord
  belongs_to :users
  has_many :bookings
  valiidates :price, :description, :duration, presence: true
end
