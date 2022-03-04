class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :street
      t.string :suburb
      t.string :postcode

      t.timestamps
    end
  end
end
