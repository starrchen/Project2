class AddColumnToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :status, :string
  end
end
