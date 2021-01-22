class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.belongs_to :region, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
