class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :timing, presence: true
end
