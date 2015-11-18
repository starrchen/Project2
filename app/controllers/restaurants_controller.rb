class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show,:edit,:update,:destroy,:subtract]
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def status_close
    @meal = Meal.find(params[:meal_id])
    @meal.status = "closed"
    redirect_to restaurant_path(@restaurant)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @customers = Customer.all
    @meal = Meal.new
    @meals = @restaurant.meals.all
    @menus = @restaurant.menus.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  # def subtract
  #   @customer = Customer.find(params[:id])
  #   @customer.update_attributes(plan: (@customer.plan - 1))
  #   redirect_to restaurant_path(@restaurant)
  # end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name,:contact,:email,:phone,:menu)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
