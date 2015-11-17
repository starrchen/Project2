class MealsController < ApplicationController

  def index
  end

  def show

  end

  def new
    @restaurant = Restaraunt.find(params[:restaurant_id])
    @meal = @restaurant.meals.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @customer = Customer.find(params[:customer_id])
    @customer.meals.create(restaurant_id: params[:restaurant_id])
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
  end



end
