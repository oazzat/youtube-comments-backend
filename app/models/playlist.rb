class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlistvideos
  has_many :videos, through: :playlistvideos
end
