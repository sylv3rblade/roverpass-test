class CreateCampgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :campgrounds do |t|
      t.string :name, required: true
      t.decimal :cost_per_night, precision: 12, scale: 2, required: true, default: 0.0
      t.boolean :public_park, default: false
      t.timestamps
    end

    add_index :campgrounds, :name, unique: true
  end
end
