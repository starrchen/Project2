class MealsController < ApplicationController



  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal = @restaurant.meals.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @customer = Customer.find(params[:customer_id])
    @customer.meals.create(restaurant_id: params[:restaurant_id], status: params[:status])
    redirect_to customer_path(@customer)
  end

  def edit

  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal = Meal.find(params[:meal_id])
    @meal.update(status: params[:status])
    redirect_to restaurant_path(@restaurant)
  end

  private
  def meal_params
    params.require(:meal).permit(:status)
  end
end
