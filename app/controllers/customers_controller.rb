class CustomersController < ApplicationController
  before_action :set_customer, only: [:show,:edit,:update,:destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
    @restaurants = Restaurant.all
    @meal = Meal.new
    @meals = @customer.meals.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    redirect_to customers_path
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end



  private
  def customer_params
    params.require(:customer).permit(:name,:year,:email,:plan)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
