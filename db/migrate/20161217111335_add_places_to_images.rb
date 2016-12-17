class AddPlacesToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :references, :places
  end
end
