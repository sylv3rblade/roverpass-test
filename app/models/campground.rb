class Campground < ApplicationRecord
  belongs_to :city
  # We have a few constraints for which campgrounds we'd like to show:
  # - We want to list our campgrounds alphabetically by name.
  # - Only campgrounds whose City name is "Austin"
  # - We also don't want to display more than 20 campgrounds.
  # - Only show the Campgrounds whose price >= $20 but < $100.
  # - Non-public parks only.

  scope :austin_cities, -> { joins(:city).where('cities.name = ?', 'Austin') }
  scope :priced,        -> { where('cost_per_night >= ?', 20).where('cost_per_night < ?', 100) }
  scope :paid,          -> { where(public_park: false) }
  scope :default_query, -> { limit(20).order(name: 'asc') }

  validates :name, uniqueness: true, presence: true
  validates :city, presence: true
  validates :cost_per_night, presence: true, numericality: true
  validates :public_park, inclusion: { in: [true, false] }

  def city_name
    city.name
  end
end
