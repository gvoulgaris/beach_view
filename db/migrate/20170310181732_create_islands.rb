class CreateIslands < ActiveRecord::Migration
  def change
    create_table :islands do |t|
      t.string :island_name
      t.string :location

      t.timestamps

    end
  end
end
