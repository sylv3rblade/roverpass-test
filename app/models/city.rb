class City < ApplicationRecord
  has_many :campgrounds, dependent: :destroy

  validates :name, presence: true
end
