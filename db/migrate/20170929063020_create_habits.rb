class CreateHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :habits do |t|
      t.string :title
      t.string :description
      t.string :why
      t.integer :user_id
      t.string :habit_type
      t.string :criteria

      t.timestamps
    end
  end
end
