class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :castle_name, :location, :castle_picture, presence: true
end
