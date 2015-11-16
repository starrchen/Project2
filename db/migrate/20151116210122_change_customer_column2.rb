class ChangeCustomerColumn2 < ActiveRecord::Migration
  def change
        rename_column :customers, :meal_plan, :plan
  end
end
