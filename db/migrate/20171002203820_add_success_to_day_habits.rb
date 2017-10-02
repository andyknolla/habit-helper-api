class AddSuccessToDayHabits < ActiveRecord::Migration[5.1]
  def change
    add_column :day_habits, :success, :boolean
  end
end
