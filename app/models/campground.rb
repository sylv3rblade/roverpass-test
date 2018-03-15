class Campground < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :cost_per_night, presence: true, numericality: true
  validates :public_park, inclusion: { in: [true, false] }
end
