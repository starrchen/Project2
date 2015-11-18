class AddFoodItemColumnToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :food_item, :string
  end
end
