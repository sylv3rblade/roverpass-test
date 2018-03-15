class AddCityToCampground < ActiveRecord::Migration[5.1]
  def change
    change_table :campgrounds do |t|
      t.references :city
    end
  end
end
