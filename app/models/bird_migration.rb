class BirdMigration < ApplicationRecord
  has_many :observations

  validates :bird_name, presence: true
end
