class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :castle_name, :location, presence: true
end
