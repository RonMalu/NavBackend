class Observation < ApplicationRecord
  belongs_to :user
  belongs_to :star_pattern
  belongs_to :wave_pattern
  belongs_to :bird_migration
end
