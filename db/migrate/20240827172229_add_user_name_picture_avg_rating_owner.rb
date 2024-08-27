class AddUserNamePictureAvgRatingOwner < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :avg_rating, :float
    add_column :users, :name, :string
    add_column :users, :owner, :boolean
    add_column :users, :picture, :string
  end
end
