class CreatePlaylistvideos < ActiveRecord::Migration[5.2]
  def change
    create_table :playlistvideos do |t|
      t.references :playlist
      t.references :video

      t.timestamps
    end
  end
end
