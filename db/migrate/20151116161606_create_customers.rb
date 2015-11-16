class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :year
      t.string :email
      t.integer :meals

      t.timestamps null: false
    end
  end
end
