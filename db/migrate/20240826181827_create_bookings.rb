class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :date
      t.references :castle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.boolean :accepted

      t.timestamps
    end
  end
end
