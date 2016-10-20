class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :year
      t.string :condition
      t.string :location_address
      t.string :location_city
      t.string :location_state
      t.string :location_zip
      t.float :price
      t.string :status
      t.string :sold_by

      t.timestamps null: false
    end
  end
end
