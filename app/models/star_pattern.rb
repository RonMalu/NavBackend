class StarPattern < ApplicationRecord
  has_many :observations

  validates :name, presence: true
  validates :direction, presence: true

end
