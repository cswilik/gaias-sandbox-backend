class AddColumnsTooRegions < ActiveRecord::Migration[6.0]
  def change
    add_column :regions, :latMin, :float
    add_column :regions, :latMax, :float
    add_column :regions, :longMin, :float
    add_column :regions, :longMax, :float
  end
end
