class CreateFixedCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :fixed_costs do |t|
      t.integer :rent
      t.integer :insurance
      t.integer :transportation
      t.integer :education
      t.integer :food
      t.integer :other

      t.timestamps
    end
  end
end
