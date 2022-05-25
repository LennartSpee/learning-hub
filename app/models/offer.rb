class Offer < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  has_one_attached :photo

  validates :price, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
end
