class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :restrict_with_error
  validates :castle_name, :location, presence: true
  # validates :photos, presence: true
  validates :castle_avg_rating, numericality: { in: 0..10 }
  validates :min_price, numericality: { greater_than: 0 }
  has_many_attached :photos
end
