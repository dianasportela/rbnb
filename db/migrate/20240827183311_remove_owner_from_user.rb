class RemoveOwnerFromUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :owner, :boolean
  end
end
