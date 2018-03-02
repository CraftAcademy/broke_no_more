class RenameFixedCostToExpense < ActiveRecord::Migration[5.1]
  def change
    rename_table :fixed_costs, :expenses
  end
end
