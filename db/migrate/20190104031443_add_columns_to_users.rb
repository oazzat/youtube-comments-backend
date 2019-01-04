class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :playlist_id, :integer
  end
end
