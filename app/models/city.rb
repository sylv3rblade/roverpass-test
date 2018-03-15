class City < ApplicationRecord
  has_many :campgrounds, dependent: :destroy

  scope :default_query, -> { limit(20).order(name: 'asc') }

  validates :name, presence: true
end
