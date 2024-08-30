class ChangeUsernameColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :name, :string
    add_column :users, :username, :string
    remove_column :users, :picture, :string
  end
end
