class CreateCastles < ActiveRecord::Migration[7.1]
  def change
    create_table :castles do |t|
      t.string :castle_name
      t.string :location
      t.string :castle_picture
      t.text :overview
      t.float :castle_avg_rating
      t.float :min_price
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
