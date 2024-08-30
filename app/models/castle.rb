class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :restrict_with_error
  validates :castle_name, :location, presence: true
  # validates :photos, presence: true
  validates :castle_avg_rating, numericality: { in: 0..10 }
  validates :min_price, numericality: { greater_than: 0 }
  has_many_attached :photos


  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :castle_name, :location ],
  associated_against: {
  bookings: [ :date_start, :date_end ]
  },
  using: {
  tsearch: { prefix: true }
  }
end
