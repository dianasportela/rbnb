class FixBookingDate < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :date, :string
    add_column :bookings, :date_start, :date
    add_column :bookings, :date_end, :date
  end
end
