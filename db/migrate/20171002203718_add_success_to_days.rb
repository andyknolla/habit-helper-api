class AddSuccessToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :success, :boolean
  end
end
