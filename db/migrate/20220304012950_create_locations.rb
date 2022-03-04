class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :lat
      t.string :lng
      t.belongs_to :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
