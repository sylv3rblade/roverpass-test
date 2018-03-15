# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Campgrounds in Anchorage
anchorage = City.create(name: 'Anchorage')
austin = City.create(name: 'Austin')


200.times.each do
  begin
    Campground.create!(
      name: "#{Faker::Company.name} campground",
      public_park: [true, false].sample,
      city: [anchorage, austin].sample,
      cost_per_night: [10, 20, 50, 70, 100, 150].sample
    )
  rescue
  end
end


puts 'done populating campgorunds'

