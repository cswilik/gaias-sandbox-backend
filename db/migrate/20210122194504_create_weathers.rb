class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :region, null: false, foreign_key: true
      t.string :description
      t.integer :temp
      t.integer :wind
      t.integer :rain
      t.integer :cloud

      t.timestamps
    end
  end
end
