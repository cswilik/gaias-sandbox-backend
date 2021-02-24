class AddColumnToRegions < ActiveRecord::Migration[6.0]
  def change
    add_column :regions, :centerLat, :float
    add_column :regions, :centerLong, :float
  end
end
