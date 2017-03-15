class AddImageToBeaches < ActiveRecord::Migration[5.0]
  def change
    add_column :beaches, :image, :string
  end
end
