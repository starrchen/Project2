class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :phone
      t.string :menu

      t.timestamps null: false
    end
  end
end
