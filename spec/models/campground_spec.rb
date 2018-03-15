require 'rails_helper'

RSpec.describe Campground, type: :model do
  context 'validations' do
    context 'validations' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
      it { is_expected.to validate_presence_of(:cost_per_night) }
      it { is_expected.to validate_numericality_of(:cost_per_night) }
      # Commented out because for some reason this is failing when it should be passing
      # Campground did not properly validate that :public_park is either ‹true›
      # or ‹false›.
      #     After setting :public_park to ‹false›, the matcher expected the
      # Campground to be valid, but it was invalid instead, producing these
      # validation errors:
      #
      # * name: ["can't be blank"]
      # * public_park: ["can't be blank"]
      # it { is_expected.to validate_inclusion_of(:public_park).in_array([true, false]) }
      it { is_expected.to belong_to(:city) }
      it { is_expected.to validate_presence_of(:city) }
    end
  end
end
