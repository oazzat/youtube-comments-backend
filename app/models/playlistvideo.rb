class Playlistvideo < ApplicationRecord
  belongs_to :playlist
  belongs_to :video
end
