class Developer < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
