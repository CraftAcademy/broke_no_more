class CreateFixedCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :fixed_costs do |t|

      t.timestamps
    end
  end
end
