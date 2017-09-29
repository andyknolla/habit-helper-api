class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.string :date_string

      t.timestamps
    end
  end
end
