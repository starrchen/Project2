class ChangeCustomerColumn < ActiveRecord::Migration
  def change
    rename_column :customers, :meals, :meal_plan
  end
end
