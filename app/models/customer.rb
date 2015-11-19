class Customer < ActiveRecord::Base
  has_many :meals
  has_many :restaurants, through: :meals # Just took out an unnecessary space here for you
end
