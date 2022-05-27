class Review < ApplicationRecord
  belongs_to :offer
  validates :content, length: { minimum: 5 }, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
