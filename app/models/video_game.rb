class VideoGame < ApplicationRecord
  belongs_to :publisher
  belongs_to :developer
  belongs_to :platform

  validates :name, :release_date, :summary, :meta_score, :review, presence: true
end
