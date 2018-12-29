class Video < ApplicationRecord
  has_many :playlistvideos
  has_many :playlists, through: :playlistvideos
end
