class RemoveSuccessFromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :success, :boolean
  end
end
