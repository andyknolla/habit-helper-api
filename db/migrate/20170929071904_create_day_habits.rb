class CreateDayHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :day_habits do |t|
      t.integer :habit_id
      t.integer :day_id

      t.timestamps
    end
  end
end
