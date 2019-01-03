class AddColumnsToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :typee, :string
    add_column :videos, :score, :float
    add_column :videos, :ratio, :float
    add_column :videos, :keywords, :string
  end
end
