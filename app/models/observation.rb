class Observation < ApplicationRecord
  belongs_to :user
  belongs_to :star_pattern, optional: true
  belongs_to :wave_pattern, optional: true
  belongs_to :bird_migration, optional: true

  validate :at_least_one_pattern_present

  private

  def at_least_one_pattern_present
    if star_pattern.nil? && wave_pattern.nil? && bird_migration.nil?
      errors.add(:base, "At least one of star, wave, or bird must be present")
    end
  end
  
end
