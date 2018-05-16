class Review < ApplicationRecord
  validates :content, uniqueness: true, presence: true, allow_blank: false
  validates :rating, numericality: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  belongs_to :restaurant
end
