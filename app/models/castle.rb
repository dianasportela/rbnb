class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :castle_name, :location, presence: true
  has_one_attached :photo
end
