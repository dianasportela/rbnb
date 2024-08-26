class CreateBookingReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_reviews do |t|
      t.references :booking, null: false, foreign_key: true
      t.float :rating
      t.text :comment

      t.timestamps
    end
  end
end
