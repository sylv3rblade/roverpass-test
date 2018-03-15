class CampgroundsController < ApplicationController
  def index
    @campgrounds =
      Campground.
        austin_cities.
        priced.
        paid.
        default_query.includes(:city)
  end
end
