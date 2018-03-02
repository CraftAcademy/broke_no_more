class CreateSavingGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :saving_goals do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
