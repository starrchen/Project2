class Restaurant < ActiveRecord::Base
  has_many :meals, dependent: :destroy
  has_many  :customers, through: :meals
end
