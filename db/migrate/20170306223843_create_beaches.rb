class CreateBeaches < ActiveRecord::Migration
  def change
    create_table :beaches do |t|
      t.string :beach_name
      t.string :location
      t.string :weather
      t.time :sunset
      t.integer :tides
      t.integer :wave_height
      t.string :entrance_fee
      t.integer :umbrella_fee
      t.string :terrain
      t.string :terrain_color
      t.string :water_type
      t.integer :shark_attacks
      t.integer :island_id

      t.timestamps

    end
  end
end
