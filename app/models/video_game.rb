class VideoGame < ApplicationRecord
  belongs_to :publisher
  belongs_to :developer
  belongs_to :platform
end
