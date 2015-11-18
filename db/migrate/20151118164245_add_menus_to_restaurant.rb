class AddMenusToRestaurant < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :type
      t.string :details
      t.references :restaurant, index: true, foreign_key: true
    end
  end
end
