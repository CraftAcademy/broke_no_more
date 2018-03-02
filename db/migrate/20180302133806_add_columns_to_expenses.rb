class AddColumnsToExpenses < ActiveRecord::Migration[5.1]

  def change
    add_column :expenses, :leisure_activities, :string
    add_column :expenses, :cultural_activities, :string
    add_column :expenses, :holidays, :string
    add_column :expenses, :sport, :string
    add_column :expenses, :eating_out, :string
    add_column :expenses, :beauty, :string
    add_column :expenses, :various, :string
  end
end
