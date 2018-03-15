class CampgroundsController < ApplicationController
  def index
    @campgrounds =
      Campground.
        austin_cities.
        priced.
        paid.
        default_query.includes(:city)
  end

  def new
    @campground = Campground.new
  end

  def create
    # TODO handling for validation
    campground = Campground.create(campground_params)
    redirect_to action: :index
  end

  def campground_params
    params.require(:campground).permit(:city_id, :name, :public_park, :cost_per_night)
  end
end
