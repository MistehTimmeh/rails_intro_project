class VideoGame < ApplicationRecord
  belongs_to :publisher
  belongs_to :developer
end
