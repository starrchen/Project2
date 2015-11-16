class Customer < ActiveRecord::Base
  has_many :meals
  has_many  :restaurants, through: :meals
end
