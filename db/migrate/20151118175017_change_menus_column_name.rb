class ChangeMenusColumnName < ActiveRecord::Migration
  def change
    rename_column :menus, :type, :meal_type
  end
end
