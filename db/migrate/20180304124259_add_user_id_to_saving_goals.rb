class AddUserIdToSavingGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :saving_goals, :user_id, :integer
  end
end
