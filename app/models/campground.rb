class Campground < ApplicationRecord
  belongs_to :city

  validates :name, uniqueness: true, presence: true
  validates :city, presence: true
  validates :cost_per_night, presence: true, numericality: true
  validates :public_park, inclusion: { in: [true, false] }
end
