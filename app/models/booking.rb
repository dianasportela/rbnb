class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user
  validates :date_end, comparison: { greater_than: :date_start }
end
